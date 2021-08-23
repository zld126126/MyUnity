using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Sample : MonoBehaviour
{
    private void Log(string s)
    {
        Debug.Log(DateTime.Now.ToString() + ":" + s);
    }

    // Start is called before the first frame update
    void Start()
    {
        Log("Sample Start");
    }

    // Update is called once per frame
    void Update()
    {

    }
}
