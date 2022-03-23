// 第一人称控制脚本

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FirstPersonControl : MonoBehaviour {

	// Use this for initialization
	void Start () {
        // 获取摄像头对象
        mCamera = transform.Find("Main Camera");
        // 获取右手对象
        mRightHand = transform.Find("RightHand");
        // 获取脚步声播放组建
        mAudio = transform.GetComponent<AudioSource>();
	}

    // Update is called once per frame
    void Update() {
        if (UpdateMovement()) {
            PlayStepSound();
        } else {
            StopPlayStepSound();
        }

        UpdateLookAt();
    }

    // 第一人称控制器的常量与变量
    private Transform mCamera;
    private Transform mRightHand;
    private AudioSource mAudio;
    public float mMoveSpeed = 8;         // 物体移动速度
    public float mMouseSensitivity = 5;     // 鼠标旋转的敏感度
    public float mMinimumX = 325;       // 向下望的最大角度
    public float mMaximumX = 45;        // 向上望的最大角度
    public float mMinimumY = -360;         // 向左望的最大角度
    public float mMaximumY = 360;       // 向右望的最大角度
    private Vector3 _curRotation = new Vector3(0,0,0);       // 当前旋转角度

    // 更新移动位置
    private bool UpdateMovement() {
        float distance = mMoveSpeed * Time.deltaTime;   // 移动距离
        
        // 前
        if (Input.GetKey(KeyCode.W)) {
            float x = Mathf.Sin(transform.eulerAngles.y * Mathf.Deg2Rad) * distance;
            float z = Mathf.Cos(transform.eulerAngles.y * Mathf.Deg2Rad) * distance;
            transform.Translate(new Vector3(x,0,z), Space.World);
            return true;
        }

        // 后
        if (Input.GetKey(KeyCode.S)) {
            float x = Mathf.Sin(transform.eulerAngles.y * Mathf.Deg2Rad) * distance;
            float z = Mathf.Cos(transform.eulerAngles.y * Mathf.Deg2Rad) * distance;
            transform.Translate(new Vector3(-x, 0, -z), Space.World);
            return true;
        }

        // 左
        if (Input.GetKey(KeyCode.A)) {
            transform.Translate(new Vector3(-distance, 0, 0));
            return true;
        }

        // 右
        if (Input.GetKey(KeyCode.D)) {
            transform.Translate(new Vector3(distance, 0, 0));
            return true;
        }

        return false;
    }

    // 更新摄像头指向位置
    private void UpdateLookAt() {
        // 左右旋转
        _curRotation.y = _curRotation.y + Input.GetAxis("Mouse X") * mMouseSensitivity;
        _curRotation.y = Mathf.Clamp(_curRotation.y, mMinimumY, mMaximumY);

        // 设置身体
        Vector3 rotation = transform.eulerAngles;
        rotation.y = _curRotation.y;
        transform.eulerAngles = rotation;

        // 上下旋转
        _curRotation.x = _curRotation.x  - Input.GetAxis("Mouse Y") * mMouseSensitivity;
        _curRotation.x = Mathf.Clamp(_curRotation.x, mMinimumX, mMaximumX);

        // 设置摄像头
        mCamera.localEulerAngles = new Vector3(_curRotation.x, 0, 0);

        // 设置右手
        rotation = mRightHand.eulerAngles;
        rotation.x = _curRotation.x;
        mRightHand.eulerAngles = rotation;
    }

    // 播放脚步声
    private void PlayStepSound() {
        if (!mAudio.isPlaying) {
            mAudio.Play();
        }
    }

    // 停止播放声音
    private void StopPlayStepSound() {
        if (mAudio.isPlaying) {
            mAudio.Stop();
        }
    }
}
