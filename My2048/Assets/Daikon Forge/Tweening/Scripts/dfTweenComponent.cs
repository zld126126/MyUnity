/* Copyright 2013 Daikon Forge */
using UnityEngine;

using System;
using System.Linq;
using System.Reflection;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// <b>Tween component base class implementation</b> - Defines the 
/// base implementation of the <see cref="dfTweenComponentBase"/> 
/// abstract class as a generic typed component.
/// </summary>
/// <typeparam name="T"></typeparam>
[Serializable]
public abstract class dfTweenComponent<T> : dfTweenComponentBase where T : struct
{

	#region Events

	#pragma warning disable 0067

	/// <summary>
	/// Raised when the tween animation has started playing 
	/// </summary>
	public event TweenNotification TweenStarted;

	/// <summary>
	/// Raised when the tween animation has stopped playing before completion
	/// </summary>
	public event TweenNotification TweenStopped;

	/// <summary>
	/// Raised when the tween animation has been paused
	/// </summary>
	public event TweenNotification TweenPaused;

	/// <summary>
	/// Raised when the tween animation has been resumed after having been paused
	/// </summary>
	public event TweenNotification TweenResumed;

	/// <summary>
	/// Raised when the tween animation has been reset
	/// </summary>
	public event TweenNotification TweenReset;

	/// <summary>
	/// Raised when the tween animation has successfully completed
	/// </summary>
	public event TweenNotification TweenCompleted;

	#pragma warning restore 0067

	#endregion

	#region Serialized fields

	[SerializeField]
	protected T startValue;

	[SerializeField]
	protected T endValue;

	[SerializeField]
	protected dfPlayDirection direction = dfPlayDirection.Forward;

	#endregion

	#region Public properties

	/// <summary>
	/// The value of the property at the start of the tweening operation
	/// </summary>
	public T StartValue
	{
		get { return this.startValue; }
		set
		{
			this.startValue = value;
			if( isRunning )
			{
				Stop();
				Play();
			}
		}
	}

	/// <summary>
	/// The desired value at the end of the tweening operation
	/// </summary>
	public T EndValue
	{
		get { return this.endValue; }
		set
		{
			this.endValue = value;
			if( isRunning )
			{
				Stop();
				Play();
			}
		}
	}

	#endregion

	#region Private instance variables 

	private T actualStartValue;
	private T actualEndValue;

	#endregion

	#region Public functions

	/// <summary>
	/// Starts the tween animation
	/// </summary>
	public override void Play()
	{

		if( isRunning )
			Stop();

		if( !enabled || !gameObject.activeSelf || !gameObject.activeInHierarchy )
			return;

		if( target == null )
			throw new NullReferenceException( "Tween target is NULL" );

		if( !target.IsValid )
			throw new InvalidOperationException( "Invalid property binding configuration on " + getPath( gameObject.transform ) + " - " + target );

		StartCoroutine( Execute( boundProperty = target.GetProperty() ) );

	}

	/// <summary>
	/// Stops the tween animation
	/// </summary>
	public override void Stop()
	{

		if( !isRunning )
			return;

		if( skipToEndOnStop )
		{
			boundProperty.Value = this.actualEndValue;
		}

		StopAllCoroutines();
		isRunning = false;

		onStopped();

		easingFunction = null;
		boundProperty = null;

	}

	/// <summary>
	/// Resets the tween animation to the beginning
	/// </summary>
	public override void Reset()
	{

		if( !isRunning )
			return;

		boundProperty.Value = this.actualStartValue;

		StopAllCoroutines();
		isRunning = false;

		onReset();

		easingFunction = null;
		boundProperty = null;

	}

	/// <summary>
	/// Pauses the tween animation 
	/// </summary>
	public void Pause()
	{
		IsPaused = true;
	}

	/// <summary>
	/// Resumes the tween animation after having been paused
	/// </summary>
	public void Resume()
	{
		IsPaused = false;
	}

	#endregion

	#region Coroutines

	protected internal IEnumerator Execute( dfObservableProperty property )
	{

		isRunning = true;

		this.easingFunction = dfEasingFunctions.GetFunction( this.easingType );
		this.boundProperty = property;

		onStarted();

		this.actualStartValue = this.startValue;
		this.actualEndValue = this.endValue;

		if( syncStartWhenRun )
		{
			actualStartValue = (T)property.Value;
		}
		else if( startValueIsOffset )
		{
			actualStartValue = offset( this.startValue, (T)property.Value );
		}

		if( syncEndWhenRun )
		{
			actualEndValue = (T)property.Value;
		}
		else if( endValueIsOffset )
		{
			actualEndValue = offset( this.endValue, (T)property.Value );
		}

		var currentValue = actualStartValue;

		if( delayBeforeStarting > 0f )
		{
			property.Value = currentValue;
			var timeout = Time.realtimeSinceStartup + delayBeforeStarting;
			while( Time.realtimeSinceStartup < timeout )
			{
				yield return null;
			}
		}

		var startTime = Time.realtimeSinceStartup;
		var elapsed = 0f;

		var pingPongDirection = 0f;

		while( true )
		{

			if( isPaused )
			{
				yield return null;
				continue;
			}

			elapsed = Mathf.Min( Time.realtimeSinceStartup - startTime, length );

			var time = easingFunction( 0f, 1f, Mathf.Abs( pingPongDirection - elapsed / length ) );
			if( animCurve != null )
			{
				time = animCurve.Evaluate( time );
			}

			currentValue = evaluate( actualStartValue, actualEndValue, time ); ;
			property.Value = currentValue;

			if( elapsed >= length )
			{

				if( loopType == dfTweenLoopType.Once )
				{
					break;
				}
				else if( loopType == dfTweenLoopType.Loop )
				{
					startTime = Time.realtimeSinceStartup;
				}
				else if( loopType == dfTweenLoopType.PingPong )
				{
					startTime = Time.realtimeSinceStartup;
					if( pingPongDirection == 0f )
						pingPongDirection = 1f;
					else
						pingPongDirection = 0f;
				}
				else
				{
					throw new NotImplementedException();
				}

			}

			yield return null;

		}

		boundProperty.Value = actualEndValue;

		isRunning = false;

		onCompleted();

	}

	#endregion 

	#region Abstract and virtual functions 

	/// <summary>
	/// Derived classes must implement this method to return an interpolated
	/// value between some instance-specific start value and end value at the 
	/// given normalized (0-1) time.
	/// </summary>
	public abstract T evaluate( T startValue, T endValue, float time );

	/// <summary>
	/// Derived classes must implement this to implement a type-safe way of
	/// adding offset values to the start and end values
	/// </summary>
	public abstract T offset( T value, T offset );

	#endregion

	#region System.Object overrides 

	/// <summary>
	/// Returns a formatted string summarizing this object's state
	/// </summary>
	public override string ToString()
	{
		if( Target != null && Target.IsValid )
		{
			var targetType = target.Component.name;
			return string.Format( "{0} ({1}.{2})", TweenName, targetType, target.MemberName );
		}
		return this.TweenName;
	}

	#endregion

	#region Private utility functions

	private string getPath( Transform obj )
	{

		System.Text.StringBuilder path = new System.Text.StringBuilder();

		while( obj != null )
		{
			if( path.Length > 0 )
			{
				path.Insert( 0, "\\" );
				path.Insert( 0, obj.name );
			}
			else
			{
				path.Append( obj.name );
			}
			obj = obj.parent;
		}

		return path.ToString();

	}

	/// <summary>
	/// Implements standard linear interpolation without clamping the time value
	/// to allow for "overshoot", which is needed by several of the tween functions.
	/// </summary>
	protected internal static float Lerp( float startValue, float endValue, float time )
	{
		return startValue + ( endValue - startValue ) * time;
	}

	#endregion

	#region Event signalers 

	protected internal override void onPaused()
	{
		SendMessage( "TweenPaused", this, SendMessageOptions.DontRequireReceiver );
		if( TweenPaused != null ) TweenPaused( this );
	}

	protected internal override void onResumed()
	{
		SendMessage( "TweenResumed", this, SendMessageOptions.DontRequireReceiver );
		if( TweenResumed != null ) TweenResumed( this );
	}

	protected internal override void onStarted()
	{
		SendMessage( "TweenStarted", this, SendMessageOptions.DontRequireReceiver );
		if( TweenStarted != null ) TweenStarted( this );
	}

	protected internal override void onStopped()
	{
		SendMessage( "TweenStopped", this, SendMessageOptions.DontRequireReceiver );
		if( TweenStopped != null ) TweenStopped( this );
	}

	protected internal override void onReset()
	{
		SendMessage( "TweenReset", this, SendMessageOptions.DontRequireReceiver );
		if( TweenReset != null ) TweenReset( this );
	}

	protected internal override void onCompleted()
	{
		SendMessage( "TweenCompleted", this, SendMessageOptions.DontRequireReceiver );
		if( TweenCompleted != null ) TweenCompleted( this );
	}

	#endregion

}
