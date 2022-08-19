using System;
using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;
using UnityEngine.UIElements;

public class SpineManager : MonoBehaviour
{
    private int Times = 0;
    private GameObject go;
    private float Duration = 0;

    private void Awake()
    {
        go = GameObject.Instantiate(Resources.Load("Spine/SpinePrefab")) as GameObject;
        go.AddComponent<SpineController>().PlayState("animation", delegate(bool b)
        {
            if (b)
            {
                PlayComplated();
            }
        });
    }

    private void PlayComplated()
    {
        Debug.Log("动画播放完成");
        Times++;
        if (Times >= 3)
        {
            Times = 0;
            SpineController sc = go.GetComponent<SpineController>();
            sc.Destroy();
        }
    }

    private void Update()
    {
        Duration += Time.deltaTime;
        if (Duration >= 20)
        {
            Duration = 0;
            SpineController sc = go.GetComponent<SpineController>();
            sc.PlayState("animation", delegate(bool b)
            {
                if (b)
                {
                    PlayComplated();
                }
            });
        }
    }
}