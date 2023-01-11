using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TestMyTrail : MonoBehaviour {

    public WeaponTrail myTrail;

    private float t = 0.033f;
    private float tempT = 0;
    private float animationIncrement = 0.003f;


    void LateUpdate()
    {
        t = Mathf.Clamp(Time.deltaTime, 0, 0.066f);

        if (t > 0)
        {
            while (tempT < t)
            {
                tempT += animationIncrement;

                if (myTrail.time > 0)
                {
                    myTrail.Itterate(Time.time - t + tempT);
                }
                else
                {
                    myTrail.ClearTrail();
                }
            }

            tempT -= t;

            if (myTrail.time > 0)
            {
                myTrail.UpdateTrail(Time.time, t);
            }
        }
    }

    void Start()
    {
        // 默认没有拖尾效果
        myTrail.SetTime(0.0f, 0.0f, 1.0f);
    }

    /// <summary>
    /// //开始进行拖尾
    /// </summary>
    public void StartTrails()
    {
        //设置拖尾时长
        myTrail.SetTime(2.0f, 0.0f, 1.0f);
        
        myTrail.StartTrail(0.5f, 0.4f);
    }
    /// <summary>
    /// //清除拖尾
    /// </summary>
    public void ClearTrails()
    {
        
        myTrail.ClearTrail();
    }
}
