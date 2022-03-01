using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Sample : MonoBehaviour {
    Button btn;
    void Awake()
    {
        btn = transform.Find("btn").GetComponent<Button>();
        btn.onClick.AddListener(Btn_Click);
        EventCenter.AddListener(EventDefine.Start, Start_CallBack);
        EventCenter.AddListener(EventDefine.End, End_CallBack);
    }

    void Btn_Click() {
        EventCenter.Broadcast(EventDefine.Start);
    }

    void Start_CallBack() {
        Debug.Log("Start_CallBack");
    }

    void End_CallBack()
    {
        Debug.Log("End_CallBack");
    }

    // Use this for initialization
    void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    private void OnApplicationQuit()
    {
        EventCenter.Broadcast(EventDefine.End);
        EventCenter.RemoveListener(EventDefine.Start, Start_CallBack);
        EventCenter.RemoveListener(EventDefine.End, End_CallBack);
    }
}
