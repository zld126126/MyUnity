using System;
using System.Collections;
using System.Collections.Generic;
using Cinemachine;
using UnityEngine;

public class MyCameraController : MonoBehaviour
{
    public static MyCameraController Instance;
    
    public Transform mTarget = null;
    private CinemachineVirtualCamera myVirtualCamera = null;

    private void Awake()
    {
        Instance = this;
    }

    // Start is called before the first frame update
    void Start()
    {
        myVirtualCamera = this.GetComponent<CinemachineVirtualCamera>();
        if (mTarget != null)
        {
            myVirtualCamera.Follow = mTarget;
        }
    }

    public void ChangeFollow(Transform target)
    {
        mTarget = target;
    }
}