using UnityEngine;
using System.Collections;

public class Move : MonoBehaviour {
	// Use this for initialization  
	void Start () {  

	}  

	// Update is called once per frame  
	void Update () {  

	}  

	//下面的函数是当鼠标触碰到碰撞体或者刚体时调用，我的碰撞体设置是mesh collider，然后别忘了，给这个collider添加物理材质  

	//值得注意的是世界坐标系转化为屏幕坐标系，Z轴是不变的  
	IEnumerator OnMouseDown()  
	{  
		//将物体由世界坐标系转化为屏幕坐标系 ，由vector3 结构体变量ScreenSpace存储，以用来明确屏幕坐标系Z轴的位置  
		Vector3 ScreenSpace = Camera.main.WorldToScreenPoint(transform.position);  
		//完成了两个步骤，1由于鼠标的坐标系是2维的，需要转化成3维的世界坐标系，2只有三维的情况下才能来计算鼠标位置与物体的距离，offset即是距离  
		Vector3 offset = transform.position-Camera.main.ScreenToWorldPoint(new Vector3(Input.mousePosition.x,Input.mousePosition.y,ScreenSpace.z));  

		Debug.Log("down");  

		//当鼠标左键按下时  
		while(Input.GetMouseButton(0))  
		{  
			//得到现在鼠标的2维坐标系位置  
			Vector3 curScreenSpace =  new Vector3(Input.mousePosition.x,Input.mousePosition.y,ScreenSpace.z);     
			//将当前鼠标的2维位置转化成三维的位置，再加上鼠标的移动量  
			Vector3 CurPosition = Camera.main.ScreenToWorldPoint(curScreenSpace)+offset;          
			//CurPosition就是物体应该的移动向量赋给transform的position属性        
			transform.position = CurPosition;  
			//这个很主要  
			yield return new WaitForFixedUpdate();  
		}  


	}  
}
