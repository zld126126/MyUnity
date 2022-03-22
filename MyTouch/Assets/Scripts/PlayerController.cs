/****************************************************
    文件：PlayerController.cs
	功能：角色控制器
*****************************************************/

using System;
using UnityEngine;

public class PlayerController : MonoBehaviour {
    private Transform camTrans;
    private Vector3 camOffset;
    private CharacterController ctrl;
    private bool isMove = false;
    private Vector2 dir = Vector2.zero;

    private int MoveSpeed = 6;
    public Vector2 Dir {
        get {
            return dir;
        }

        set {
            if (value == Vector2.zero) {
                isMove = false;
            }
            else {
                isMove = true;
            }
            dir = value;
        }
    }

    private void Awake()
    {
        camTrans = Camera.main.transform;
        camOffset = transform.position - camTrans.position;
        ctrl = gameObject.GetComponent<CharacterController>();
    }

    private void Update() {
        #region Input
        /*
        float h = Input.GetAxis("Horizontal");
        float v = Input.GetAxis("Vertical");

        Vector2 _dir = new Vector2(h, v).normalized;
        if (_dir != Vector2.zero) {
            Dir = _dir;
            SetBlend(Constants.BlendWalk);
        }
        else {
            Dir = Vector2.zero;
            SetBlend(Constants.BlendIdle);
        }
        */
        #endregion

        if (isMove) {
            //设置方向
            SetDir();
            //产生移动
            SetMove();
            //相机跟随
            SetCam();
        }
    }

    private void SetDir() {
        float angle = Vector2.SignedAngle(Dir, new Vector2(0, 1)) + camTrans.eulerAngles.y;
        Vector3 eulerAngles = new Vector3(0, angle, 0);
        transform.localEulerAngles = eulerAngles;
    }

    private void SetMove() {
        ctrl.Move(transform.forward * Time.deltaTime * MoveSpeed);
    }

    private void SetCam() {
        if (camTrans != null) {
            camTrans.position = transform.position - camOffset;
        }
    }
}