using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LaunchLogic : MonoSingleton<LaunchLogic>
{
    //private static  _class;

    public void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }
    public void Login(string name)
    {
        if(!NameISOK(name)) return;


    }

    private bool NameISOK(string name)
    {
        //合法之后设置数据
        return true;
    }   
}
