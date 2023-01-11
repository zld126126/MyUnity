/* Copyright 2013 Daikon Forge */

using UnityEngine;

using System;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// Provides the ability to bind a property on one object to the value of 
/// another property on another object. This class uses an event-driven 
/// model, which waits for an event to be raised indicating that a property
/// has been changed, rather than polling the property each frame.
/// </summary>
[Serializable]
[AddComponentMenu( "Daikon Forge/Data Binding/Event-Driven Property Binding" )]
public class dfEventDrivenPropertyBinding : dfPropertyBinding
{

	#region Public fields

	/// <summary>
	/// The name of an event on the DataSource that will be raised when 
	/// the desired property is changed, allowing for an event-driven
	/// rather than polling-driven binding. This value can be left blank 
	/// (or null), but if specified it *must* match the name of an event 
	/// on the source that will indicate that the property specified by
	/// DataSource has been changed.
	/// </summary>
	public string SourceEventName;

	/// <summary>
	/// The name of an event on the DataTarget that will be raised when 
	/// the desired property is changed, allowing for an event-driven
	/// rather than polling-driven binding. This value can be left blank 
	/// (or null), but if specified it *must* match the name of an event 
	/// on the source that will indicate that the property specified by
	/// DataTarget has been changed.
	/// </summary>
	public string TargetEventName;

	#endregion

	#region Private runtime variables 

	protected dfEventBinding sourceEventBinding;
	protected dfEventBinding targetEventBinding;

	#endregion

	#region Unity events

	public override void Update()
	{
		// Do nothing, override the default polling behavior
	}

	#endregion

	#region Public methods

	/// <summary>
	/// Bind the source and target properties 
	/// </summary>
	public override void Bind()
	{

		if( isBound )
			return;

		if( !DataSource.IsValid || !DataTarget.IsValid )
		{
			Debug.LogError( string.Format( "Invalid data binding configuration - Source:{0}, Target:{1}", DataSource, DataTarget ) );
			return;
		}

		sourceProperty = DataSource.GetProperty();
		targetProperty = DataTarget.GetProperty();

		if( ( sourceProperty != null ) && ( targetProperty != null ) )
		{

			// Create an EventBinding component to mirror the source property
			if( !string.IsNullOrEmpty( SourceEventName ) && SourceEventName.Trim() != "" )
			{
				bindSourceEvent();
			}

			// Create an EventBinding component to mirror the target property
			if( !string.IsNullOrEmpty( TargetEventName ) && TargetEventName.Trim() != "" )
			{
				bindTargetEvent();
			}
			else
			{

				// Determine whether to use the format string
				if( targetProperty.PropertyType == typeof( string ) )
				{
					if( sourceProperty.PropertyType != typeof( string ) )
					{
						useFormatString = !string.IsNullOrEmpty( FormatString );
					}
				}

			}

			// Ensure that both properties are synced at start
			MirrorSourceProperty();

			// Flag the binding as valid
			isBound = ( sourceEventBinding != null );

		}

	}

	/// <summary>
	/// Unbind the source and target properties 
	/// </summary>
	public override void Unbind()
	{

		if( !isBound )
			return;

		isBound = false;

		if( sourceEventBinding != null )
		{
			sourceEventBinding.Unbind();
			Destroy( sourceEventBinding );
			sourceEventBinding = null;
		}

		if( targetEventBinding != null )
		{
			targetEventBinding.Unbind();
			Destroy( targetEventBinding );
			targetEventBinding = null;
		}

	}

	/// <summary>
	/// Copies the value of the source property to the target property
	/// </summary>
	public void MirrorSourceProperty()
	{
		targetProperty.Value = formatValue( sourceProperty.Value );
	}

	/// <summary>
	/// Copies the value of the target property back to the source property
	/// </summary>
	public void MirrorTargetProperty()
	{
		sourceProperty.Value = targetProperty.Value;
	}

	#endregion

	#region Private utility methods 

	private object formatValue( object value )
	{

		try
		{

			if( useFormatString && !string.IsNullOrEmpty( FormatString ) )
			{
				return string.Format( FormatString, value );
			}

		}
		catch( FormatException err )
		{
			Debug.LogError( err, this );
			if( Application.isPlaying )
				this.enabled = false;
		}

		return value;

	}

	private void bindSourceEvent()
	{

		sourceEventBinding = gameObject.AddComponent<dfEventBinding>();
		sourceEventBinding.hideFlags = HideFlags.HideAndDontSave | HideFlags.HideInInspector;

		sourceEventBinding.DataSource = new dfComponentMemberInfo()
		{
			Component = DataSource.Component,
			MemberName = SourceEventName
		};

		sourceEventBinding.DataTarget = new dfComponentMemberInfo()
		{
			Component = this,
			MemberName = "MirrorSourceProperty"
		};

		sourceEventBinding.Bind();

	}

	private void bindTargetEvent()
	{

		targetEventBinding = gameObject.AddComponent<dfEventBinding>();
		targetEventBinding.hideFlags = HideFlags.HideAndDontSave | HideFlags.HideInInspector;

		targetEventBinding.DataSource = new dfComponentMemberInfo()
		{
			Component = DataTarget.Component,
			MemberName = TargetEventName
		};

		targetEventBinding.DataTarget = new dfComponentMemberInfo()
		{
			Component = this,
			MemberName = "MirrorTargetProperty"
		};

		targetEventBinding.Bind();

	}

	#endregion

	#region System.Object overrides

	/// <summary>
	/// Returns a formatted string summarizing this object's state
	/// </summary>
	public override string ToString()
	{
			
		string sourceType = DataSource != null && DataSource.Component != null ? DataSource.Component.GetType().Name : "[null]";
		string sourceMember = DataSource != null && !string.IsNullOrEmpty( DataSource.MemberName ) ? DataSource.MemberName : "[null]";

		string targetType = DataTarget != null && DataTarget.Component != null ? DataTarget.Component.GetType().Name : "[null]";
		string targetMember = DataTarget != null && !string.IsNullOrEmpty( DataTarget.MemberName ) ? DataTarget.MemberName : "[null]";

		return string.Format( "Bind {0}.{1} -> {2}.{3}", sourceType, sourceMember, targetType, targetMember );

	}

	#endregion

}
