/* Copyright 2013 Daikon Forge */

using UnityEngine;

using System;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// Provides the ability to bind a property on one object to the value of 
/// another property on another object.
/// </summary>
[Serializable]
[AddComponentMenu( "Daikon Forge/Data Binding/Property Binding" )]
public class dfPropertyBinding : MonoBehaviour, IDataBindingComponent
{

	#region Public fields

	/// <summary>
	/// Specifies which field or property to bind to on the source component
	/// </summary>
	public dfComponentMemberInfo DataSource;

	/// <summary>
	/// Specifies which field or property to bind to on the target component
	/// </summary>
	public dfComponentMemberInfo DataTarget;

	/// <summary>
	/// If specified, and the target property is a string type, this value
	/// will be used to format the source value before assigning it to 
	/// the target. See <a href="http://msdn.microsoft.com/en-us/library/dwhawy9k(v=vs.80).aspx" target="_blank">this page</a>
	/// for some examples of how a format string can be used to convert
	/// numeric data types to strings.
	/// </summary>
	public string FormatString;

	/// <summary>
	/// If set to TRUE, the property will be synchronized 
	/// between DataSource and DataTarget. ie: When either 
	/// property changes, the other will be set to match.
	/// If set to FALSE, only changes to DataSource will 
	/// be mirrored to DataTarget.
	/// </summary>
	public bool TwoWay = false;

	#endregion

	#region Private fields 

	protected dfObservableProperty sourceProperty;
	protected dfObservableProperty targetProperty;

	protected bool isBound = false;
	protected bool useFormatString = false;

	#endregion 

	#region Unity events 

	public virtual void OnEnable()
	{
		
		if( DataSource == null || DataTarget == null )
			return;

		if( !isBound && DataSource.IsValid && DataTarget.IsValid )
		{
			Bind();
		}

	}

	public virtual void Start()
	{

		if( DataSource == null || DataTarget == null )
			return;

		if( !isBound && DataSource.IsValid && DataTarget.IsValid )
		{
			Bind();
		}

	}

	public virtual void OnDisable()
	{
		Unbind();
	}

	public virtual void Update()
	{

		if( sourceProperty == null || targetProperty == null )
			return;

		if( sourceProperty.HasChanged )
		{
			targetProperty.Value = formatValue( sourceProperty.Value );
			sourceProperty.ClearChangedFlag();
		}
		else if( TwoWay && targetProperty.HasChanged )
		{
			sourceProperty.Value = targetProperty.Value;
			targetProperty.ClearChangedFlag();
		}

	}

	#endregion

	#region Public methods

	/// <summary>
	/// Returns TRUE if the property binding can be implemented
	/// as a two-way binding, FALSE otherwise
	/// </summary>
	/// <returns></returns>
	public virtual bool CanSynchronize()
	{

		if( DataSource == null || DataTarget == null )
			return false;

		if( !DataSource.IsValid && !DataTarget.IsValid )
			return false;

		if( DataTarget.GetMemberType() != DataSource.GetMemberType() )
			return false;

		return true;

	}

	/// <summary>
	/// Bind the source and target properties 
	/// </summary>
	public virtual void Bind()
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

		isBound = ( sourceProperty != null ) && ( targetProperty != null );

		if( isBound )
		{

			// Determine whether to use the format string
			if( targetProperty.PropertyType == typeof( string ) )
			{
				if( sourceProperty.PropertyType != typeof( string ) )
				{
					useFormatString = !string.IsNullOrEmpty( FormatString );
				}
			}

			// Ensure that both properties are synced at start
			targetProperty.Value = formatValue( sourceProperty.Value );

		}

	}

	/// <summary>
	/// Unbind the source and target properties 
	/// </summary>
	public virtual void Unbind()
	{

		if( !isBound )
			return;

		sourceProperty = null;
		targetProperty = null;

		isBound = false;

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
