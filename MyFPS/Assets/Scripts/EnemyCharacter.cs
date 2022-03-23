// 敌人角色脚本，敌人也就是其他客户的

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyCharacter : MonoBehaviour {

    // Use this for initialization
	void Start () {
        // 获取本机玩家的对象
        mCharacter = GameObject.Find("Character").transform;
        mCharacterComponent = mCharacter.GetComponent<Character>();
        // 获取摄像头对象
        mCamera = transform.Find("Camera");
		// 获取右手对象
        mRightHand = transform.Find("RightHand");
        // 获取枪声播放组件
        mGunAudio = transform.Find("RightHand/Pistol").GetComponent<AudioSource>();
        // 获取火花效果
        mFireEffect = transform.Find("RightHand/Pistol/FireEffect").GetComponent<ParticleSystem>();
        // 获取脚步声播放组件
        mAudio = transform.GetComponent<AudioSource>();
        // 显示血量和ID的组件
        txID = transform.Find ("ID");
        txIDText = transform.Find ("ID").GetComponent<TextMesh> ();
        txHP = transform.Find ("HP");
		txHPText = transform.Find ("HP").GetComponent<TextMesh> ();
	}
	
	// Update is called once per frame
	void Update () {
		// 摧毁对象
        if (isDestroy) {
            Destroy(gameObject);
        }

        // 更新对象属性
        UpdataProperties();
	}
    
    private Transform mCharacter;
    private Character mCharacterComponent;
    private Transform mCamera;
    private Transform mRightHand;
    private AudioSource mGunAudio;
    private AudioSource mAudio;
    private ParticleSystem mFireEffect;     // 开枪后的火花
    public GameObject mPiece;       // 开枪后撞击产生的碎片
    private bool isDestroy = false;

    // 销毁角色
    public void Destroy() {
        isDestroy = true;
    }

    // 角色移动动作
    public void Move(Vector3 pos, Vector3 rot, Vector3 cameraRot, Vector3 rightHandRot) {
        if (pos != transform.position) {
            transform.position = pos;
            PlayStepSound();
        } else {
            StopPlayStepSound();
        }

        mCamera.eulerAngles = cameraRot;

        transform.eulerAngles = rot;

        mRightHand.eulerAngles = rightHandRot;
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

    // 开枪
    public void Fire() {
        // 射击音效与画面
        PlayShotSound();

        // 播放火花效果
        PlayFireEffect();

        // 判断射击位置
        RaycastHit hit;
        if (Physics.Raycast(mCamera.position, mCamera.forward, out hit, 100)) {
            // 被枪击中的地方会有碎片弹出
            DrawPieces(hit);

            // 判断本机玩家是否中枪如果是就减
            print(hit.collider.name);
            if (hit.collider.name == mCharacter.name) {
                mCharacterComponent.GetHurt();
            }
        }
    } 

    // 播放枪声
    private void PlayShotSound() {
        mGunAudio.PlayOneShot(mGunAudio.clip);
    }

    // 画碎片
    private void DrawPieces(RaycastHit hit) {
        for (int i = 0; i < 5; ++i) {
            GameObject p = Transform.Instantiate(mPiece);

            // 碎片撞击到物体后的反弹位置
            Vector3 fwd = mCamera.forward * -1;
            p.transform.position = hit.point;
            p.GetComponent<Rigidbody>().AddForce(fwd * 100);

            // 0.3秒后删除
            Destroy(p, 0.3f);
        }
    }

    // 播放火花效果
    private void PlayFireEffect() {
        mFireEffect.Play();
    }

    // 人物变量
    private int _id = 1;
    private int _hp = 100;
    private Transform txID;
    private TextMesh txIDText;
    private Transform txHP;
    private TextMesh txHPText;

    // 角色id
    public void SetID(int id) {
        _id = id;
    }

    // 角色血量
    public void SetHP(int hp) {
        _hp = hp;
    }

    // 更新角色变量/属性
    private void UpdataProperties() {
        // 显示血量和ID
        txIDText.text = "ID:"+_id.ToString();
        txHPText.text = "HP:"+_hp.ToString();

        // 血量和ID的方向，面向着本机玩家
        txID.rotation = mCharacter.rotation;
        txHP.rotation = mCharacter.rotation;
    }
}
