using UnityEngine;
using System.Collections;

[AddComponentMenu( "Daikon Forge/Examples/General/Follow Object" )]
public class dfFollowObject : MonoBehaviour
{

	public Camera mainCamera;
	public GameObject attach;
	public Vector3 offset;
	public float hideDistance = 20;
	public float fadeDistance = 15;
	public bool constantScale = false;

	private Transform controlTransform;
	private Transform followTransform;

	private dfControl myControl;
	private dfGUIManager manager;
	private Vector2 lastPosition = Vector2.one * float.MinValue;

	void OnEnable()
	{

		if( mainCamera == null )
		{
			mainCamera = Camera.main;
			if( mainCamera == null )
			{
				Debug.LogError( "dfFollowObject component is unable to determine which camera is the MainCamera", gameObject );
				this.enabled = false;
				return;
			}
		}

		myControl = GetComponent<dfControl>();
		if( myControl == null )
		{
			Debug.LogError( "No dfControl component on this GameObject: " + gameObject.name, gameObject );
			this.enabled = false;
		}

		if( myControl == null || attach == null )
		{
			Debug.LogWarning( "Configuration incomplete: " + this.name );
			this.enabled = false;
			return;
		}

		if( myControl.Parent != null )
		{
			Debug.LogWarning( "For best results, " + myControl + " should be parented directly to the UI Root", this );
		}

		controlTransform = myControl.transform;
		followTransform = attach.transform;

		// Obtain a reference to the dfGUIManager rendering the control
		manager = myControl.GetManager();

		dfFollowObjectSorter.Register( this );

	}

	void OnDisable()
	{
		dfFollowObjectSorter.Unregister( this );
	}

	void Update()
	{

		var targetPosition = followTransform.position;

		var cameraDistance = Vector3.Distance( mainCamera.transform.position, targetPosition );
		if( cameraDistance > hideDistance )
		{
			// Hide the control after a given distance
			myControl.Opacity = 0f;
			return;
		}
		else if( cameraDistance > fadeDistance )
		{
			// Apply fade 
			myControl.Opacity = 1.0f - ( cameraDistance - fadeDistance ) / ( hideDistance - fadeDistance );
		}
		else
		{
			// Fully visible
			myControl.Opacity = 1.0f;
		}

		// Calculate 3D point of attachment
		var offsetPoint = followTransform.position + offset;

		// Convert world point to resolution-independant screen point
		var screenPoint = manager.ScreenToGui( mainCamera.WorldToScreenPoint( offsetPoint ) );

		// Calulate resolution adjustment
		if( !manager.PixelPerfectMode )
		{
			if( constantScale )
				controlTransform.localScale = Vector3.one * ( manager.FixedHeight / mainCamera.pixelHeight );
			else
				controlTransform.localScale = Vector3.one;
		}

		// Center control over the followed object
		screenPoint.x -= ( myControl.Width / 2 ) * controlTransform.localScale.x;
		screenPoint.y -= myControl.Height * controlTransform.localScale.y;

		// Don't bother trying to update if nothing has changed 
		if( Vector2.Distance( screenPoint, lastPosition ) <= 0.5f )
			return;

		// Cache the last screen position used, so that it can be determined whether there 
		// is a need to update the control's position, which is an expensive operation
		lastPosition = screenPoint;

		// Do not render the control if the object being followed is not in front of the camera
		var direction = ( attach.transform.position - mainCamera.transform.position ).normalized;
		var inFrontOfCamera = Vector3.Dot( mainCamera.transform.forward, direction ) > float.Epsilon;
		if( !inFrontOfCamera )
		{
			myControl.IsVisible = false;
			return;
		}
		else
		{
			myControl.IsVisible = true;
		}

		// Position control on screen
		myControl.RelativePosition = (Vector3)screenPoint;

	}

}
