/****************************************************
    文件：MyTouch.cs
	功能：触摸功能
*****************************************************/

using System;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class TouchDemo : BaseTouch
{
	
	private Image imgTouch;
	private Image imgDirBg;
	private Image imgDirPoint;
	
	private int ScreenStandardHeight = 1920;
	/// <summary>
	/// 触摸OPDis
	/// </summary>
	[Range(150, 500)] 
	public int ScreenOPDis = 300;
	

	private GameObject box;
	private void Awake()
	{
		imgTouch = GameObject.Find("2D/imgTouch").GetComponent<Image>();
		imgDirBg = GameObject.Find("2D/imgTouch/imgDirBg").GetComponent<Image>();
		imgDirPoint = GameObject.Find("2D/imgTouch/imgDirBg").GetComponent<Image>();
		box = GameObject.Find("/3D/box");
	}

	private PlayerController _controller; 
	private void Start()
	{
		pointDis = Screen.height * 1.0f / ScreenStandardHeight * ScreenOPDis;
		defaultPos = imgDirBg.transform.position;
		RegisterTouchEvents();
		_controller = box.GetComponent<PlayerController>();
	}

	private float pointDis;
	private Vector2 startPos = Vector2.zero;
	private Vector2 defaultPos = Vector2.zero;

	private void RegisterTouchEvents()
	{
		OnClickDown(imgTouch.gameObject, (PointerEventData evt) => {
			startPos = evt.position;
			SetActive(imgDirPoint,true);
			imgDirBg.transform.position = evt.position;
		});
		
		OnClickUp(imgTouch.gameObject, (PointerEventData evt) => {
			imgDirBg.transform.position = defaultPos;
			SetActive(imgDirPoint, false);
			imgDirPoint.transform.localPosition = Vector2.zero;
			
			_controller.Dir = Vector2.zero;
		});
		
		OnDrag(imgTouch.gameObject, (PointerEventData evt) => {
			Vector2 dir = evt.position - startPos;
			float len = dir.magnitude;
			if (len > pointDis) {
				Vector2 clampDir = Vector2.ClampMagnitude(dir, pointDis);
				imgDirPoint.transform.position = startPos + clampDir;
			}
			else {
				imgDirPoint.transform.position = evt.position;
			}
			
			_controller.Dir = dir.normalized;
		});
	}
}