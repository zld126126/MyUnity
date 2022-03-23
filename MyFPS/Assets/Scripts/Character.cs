// 本机角色脚本

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Character : MonoBehaviour {

    // Use this for initialization
    void Start() {
        // 获取摄像头对象
        mCamera = transform.Find("Main Camera");
        // 获取右手对象
        mRightHand = transform.Find("RightHand");
        // 获取枪声播放组件
        mGunAudio = transform.Find("RightHand/Pistol").GetComponent<AudioSource>();
        // 获取火花效果
        mFireEffect = transform.Find("RightHand/Pistol/FireEffect").GetComponent<ParticleSystem>();
        // 获取网络组件
        mNetwork = transform.GetComponent<Network>();
    }

    // Update is called once per frame
    void Update() {
        UpdateFire();

        // 发送当前状态到服务端，然后服务端就会转发给其他客户
        mNetwork.SendStatus(transform.position, transform.eulerAngles, 
        mCamera.eulerAngles, mRightHand.eulerAngles, _isShooted, _hp);

        // 处理服务器发过来的数据包，数据包里装着其他客户的信息
        ProcessPackage();
    }

    private Transform mCamera;
    private Transform mRightHand;
    private AudioSource mGunAudio;
    public GameObject mPiece;       // 开枪后撞击产生的碎片
    private ParticleSystem mFireEffect;     // 开枪后的火花
    private bool _isShooted;    // 判断是否开了枪
    private Network mNetwork;       // 网络组件
    public GameObject mEnemyCharacter;  // 其他客户的实例
    private Hashtable _htEnemies = new Hashtable();    // 其他客户的控制脚本

    // 开枪
    private void UpdateFire() {
        if (Input.GetButtonUp("Fire1")) {
            // 射击音效与画面
            PlayShotSound();

            // 播放火花效果
            PlayFireEffect();

            // 判断射击位置
            RaycastHit hit;
            if (Physics.Raycast(mCamera.position, mCamera.forward, out hit, 100)) {
                // 被枪击中的地方会有碎片弹出
                DrawPieces(hit);
            }

            // 设置开枪判断
            _isShooted = true;
        } else {
            // 设置开枪判断
            _isShooted = false;
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
    private int _hp = 100;

    // 受到伤害
    public void GetHurt() {
        _hp -= 10;

        if (_hp <= 0) {
            // 复活
            Revive();
        }
    }

    // 复活
    private void Revive() {
        _hp = 100;
        transform.position = new Vector3(0,1,0);
    }

    // 处理数据包
    private void ProcessPackage() {
        Network.Package p;

        // 获取数据包直到完毕
        while (mNetwork.NextPackage(out p)) {
            // 确定不是本机，避免重复
            if (mNetwork._id == p.id) {
                return;
            }

            // 获取该客户相对应的人物模组
            if (!_htEnemies.Contains(p.id)) {
                AddEnemyCharacter(p.id);
            }

            // 更新客户的人物模型状态
            EnemyCharacter ec = (EnemyCharacter)_htEnemies[p.id];

            // 血量
            ec.SetHP(p.hp);

            // 移动动作
            ec.Move(p.pos.V3, p.rot.V3, p.cameraRot.V3, p.rightHandRot.V3);

            // 开枪
            if (p.isShooted) {
                ec.Fire();
            }
        }
    }

    // 增加客户的人物模组
    private EnemyCharacter AddEnemyCharacter(int id) {
        GameObject p = GameObject.Instantiate(mEnemyCharacter);
        EnemyCharacter ec = p.GetComponent<EnemyCharacter>();
        
        // 修改ID
        ec.SetID(id);

        // 加入到哈希表
        _htEnemies.Add(id, ec);

        return ec;
    }

    // 删除客户的人物模组
    private void RemoveEnemyCharacter(int id) {
        EnemyCharacter ec = (EnemyCharacter)_htEnemies[id];
        ec.Destroy();
        _htEnemies.Remove(id);
    }

    // 删除所有客户的人物模组
    public void RemoveAllEnemyCharacter() {
        foreach (int id in _htEnemies.Keys) {
            EnemyCharacter ec = (EnemyCharacter)_htEnemies[id];
            ec.Destroy();
        }
        _htEnemies.Clear();
    }
}
