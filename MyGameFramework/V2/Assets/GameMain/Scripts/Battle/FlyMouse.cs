using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System;
public class FlyMouse : MonoBehaviour
{
    public GameObject Pat;
    public Image myImage;
    public Sprite[] mySprites;
    public Image die;
    int index = 0;
    float waitTime = 0f;
    private bool isrun = false;
    protected float runLen;
    //下降速度
    protected float speed = 2;
    [HideInInspector]
    public string _value = "";
    //蛋糕实例
    private Transform cake;
    [HideInInspector]
    public bool isTarget = false;
    public Text _text;
    private Vector3 targetPos;
    //移动到蛋糕的速度
    private int moveSpeed = 100;
    //旋转速度
    float rotateSpeed = 30;
    //目的地偏移量
    float targetPix = 50;
    //是否死亡
    [HideInInspector]
    public bool isDie = false;
    
    [HideInInspector]
    public bool _pause = false;
    private Action callback;

    private AudioSource audio1;
    public virtual void Init(Transform ck,Action cb)
    {
        audio1 = gameObject.AddComponent<AudioSource>();
        myImage.gameObject.SetActive(true);
        die.gameObject.SetActive(false);
        cake = ck;
        callback = cb;
        _pause = false;

        AudioClip clip = Resources.Load<AudioClip>(Config.Fly1);
        audio1.clip = clip;
        PlaySound(clip);
       // AudioManager.Instance.PlaySound(Config.Fly1);
    }
    // Start is called before the first frame update
    void Start()
    {

    }

   public virtual void Update()
    {
        if(_pause)return;
        StartCoroutine(ChangeImage(waitTime));
        waitTime += 0.2f;

        runDown();
        RunCake();
    }
    public virtual void runDown()
    {
        if (!isrun) return;
        if (runLen <= 0)
        {
            isrun = false;
            runLen = 0;
            _text.gameObject.SetActive(false);
            //设置苍蝇的目的地
            SetTarget();
            isTarget = true;
            //扣血
            callback();
            return;
        }
        runLen -= speed;
        gameObject.transform.localPosition = new Vector3(gameObject.transform.localPosition.x, gameObject.transform.localPosition.y - speed, gameObject.transform.localPosition.z);
    }
    public virtual IEnumerator  ChangeImage(float myTime)
    {
        yield return new WaitForSeconds(myTime);
        index++;
        if (index < mySprites.Length)
        {
            myImage.sprite = mySprites[index];
        }
        else
        {
            index = 0;
        }
    }

    public void Run(float len)
    {
        runLen = len;
        isrun = true;
    }

    public void SetValue(string value)
    {
        //设置一个字母
        _value = value;
        _text.text = value;
        isDie = false;
    }
    public virtual void Clear()
    {
        isrun = false;
        isDie = true;
        myImage.gameObject.SetActive(false);
        Pat.gameObject.SetActive(true);
        die.gameObject.SetActive(true);
        StartCoroutine(timer());

    }
    IEnumerator timer()
    {
        yield return new WaitForSeconds(0.3f);
        gameObject.SetActive(false);
        Destroy(gameObject);
        StopAllCoroutines();
    }
    private void RunCake()
    {
        if (!isTarget) return;
        Vector3 offSet = targetPos - transform.localPosition;
        transform.localPosition += offSet.normalized * moveSpeed * Time.deltaTime;
        if(Vector3.Distance(targetPos, transform.localPosition)<0.5f)
        {
            isTarget = false;
            transform.localPosition = targetPos;
        }
        //旋转
        float angle = Vector3.SignedAngle(Vector3.up, targetPos, Vector3.forward);
        Quaternion rotation00 = Quaternion.Euler(0, 0, angle);
        transform.rotation = Quaternion.RotateTowards(transform.rotation, rotation00, Time.fixedDeltaTime * rotateSpeed);
    }   
    private void SetTarget()
    {
        float len = cake.GetComponent<RectTransform>().rect.width / 2;
        Vector3 pos;
        //判断苍蝇在左还是在右
        if (this.transform.localPosition.x >= 0)
        {
            //在右
            pos = CreateVirPosInCake(len);
        }
        else
        {
            //在左
            pos = CreateVirPosInCake(-len);
        }
        targetPos = pos;
    }

    private Vector3 CreateVirPosInCake(float maxX)
    {
        float x, y, py;
        float len = cake.GetComponent<RectTransform>().rect.height/2;
        if (maxX > 0)
        {
            x =UnityEngine.Random.Range(0, maxX);
        }
        else
        {
            x = UnityEngine.Random.Range(maxX, 0);
        }
        //获取cake的世界坐标
        Vector3 cakePosition = transform.parent.InverseTransformPoint(cake.transform.position);
        py = UnityEngine.Random.Range(-len+targetPix, len-targetPix);
        y = cakePosition.y - py;
        return new Vector3(x, y, 0);
    }

    //相对目标位置运动
    void trackPosition02(Vector3 tarPosition)
    {
        Vector3 targetDir = tarPosition - transform.position;
        Vector3 up = transform.up;
        float angle = Vector3.Angle(targetDir, up);
        if (angle <= Time.fixedDeltaTime * rotateSpeed) return;//判断角度是否小于临界值，如果小于，那么不需要旋转，此处用于避免旋转抖动
        Vector3 cross = Vector3.Cross(up, targetDir);
        if (cross.z > 0) transform.Rotate(new Vector3(0, 0, rotateSpeed* Time.deltaTime)); else transform.Rotate(new Vector3(0, 0, -rotateSpeed* Time.deltaTime));
    }
    private void  PlaySound(AudioClip clip)
    {
        audio1.PlayOneShot(clip);
    }
    public void SetBaseData(float spe = 2,int movespe = 100,float rotateSpe = 30,float targetP = 50)
    {
        speed = spe;
        moveSpeed = movespe;
        rotateSpeed = rotateSpe;
        targetPix = targetP;
    }
    //暂停飞行
    public void Pause()
    {
        _pause = true;
    }

    public void Destroy()
    {
        audio1.Stop();
        Destroy(gameObject);
    }
}
