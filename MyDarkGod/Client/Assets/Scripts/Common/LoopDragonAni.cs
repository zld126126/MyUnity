/****************************************************
    文件：LoopDragonAni.cs
	作者：SIKI学院——Plane
    邮箱: 1785275942@qq.com
    日期：2018/12/4 5:51:47
	功能：飞龙循环动画
*****************************************************/

using UnityEngine;

public class LoopDragonAni : MonoBehaviour {
    private Animation ani;

    private void Awake() {
        ani = transform.GetComponent<Animation>();
    }

    private void Start() {
        if (ani != null) {
            InvokeRepeating("PlayDragonAni", 0, 20);
        }
    }

    private void PlayDragonAni() {
        if (ani != null) {
            ani.Play();
        }
    }
}