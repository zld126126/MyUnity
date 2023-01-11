using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bird : MonoBehaviour {

    private bool isClick = false;
    public float maxDis = 3;
    [HideInInspector]
    public SpringJoint2D sp;
    protected Rigidbody2D rg;

    public LineRenderer right;
    public Transform rightPos;
    public LineRenderer left;
    public Transform leftPos;

    public GameObject boom;

    protected TestMyTrail myTrail;

    private bool canMove = true;
    public float smooth = 3;

    public AudioClip select;
    public AudioClip fly;

    private bool isFly = false;

    public Sprite hurt;
    protected SpriteRenderer render;

    private void Awake()
    {
        sp = GetComponent<SpringJoint2D>();
        rg = GetComponent<Rigidbody2D>();
        myTrail = GetComponent<TestMyTrail>();
        render = GetComponent<SpriteRenderer>();
    }

    private void OnMouseDown()//鼠标按下
    {
        if (canMove)
        {
            AudioPlay(select);
            isClick = true;
            rg.isKinematic = true;
        }
    }


    private void OnMouseUp() //鼠标抬起
    {
        if (canMove)
        {
            isClick = false;
            rg.isKinematic = false;
            Invoke("Fly", 0.1f);
            //禁用划线组件
            right.enabled = false;
            left.enabled = false;
            canMove = false;
        }

    }


    private void Update()
    {
        if (isClick) {//鼠标一直按下，进行位置的跟随
            transform.position = Camera.main.ScreenToWorldPoint(Input.mousePosition);
            //transform.position += new Vector3(0, 0, 10);
            transform.position += new Vector3(0,0,-Camera.main.transform.position.z);


            if (Vector3.Distance(transform.position, rightPos.position) > maxDis) { //进行位置限定
                Vector3 pos = (transform.position - rightPos.position).normalized;//单位化向量
                pos *= maxDis;//最大长度的向量
                transform.position = pos + rightPos.position;

            }
            Line();
        }


        //相机跟随
        float posX = transform.position.x;
        Camera.main.transform.position = Vector3.Lerp(Camera.main.transform.position,new Vector3(Mathf.Clamp(posX,0,15),Camera.main.transform.position.y, 
            Camera.main.transform.position.z),smooth*Time.deltaTime);


        if (isFly) {
            if (Input.GetMouseButtonDown(0)) {
                ShowSkill();
            }
        }
    }

    void Fly()
    {
        isFly = true;
        AudioPlay(fly);
        myTrail.StartTrails();
        sp.enabled = false;
        Invoke("Next", 5);
    }

    /// <summary>
    /// 划线
    /// </summary>
    void Line()
    {
        right.enabled = true;
        left.enabled = true;

        right.SetPosition(0, rightPos.position);
        right.SetPosition(1, transform.position);

        left.SetPosition(0, leftPos.position);
        left.SetPosition(1, transform.position);
    }

    /// <summary>
    /// 下一只小鸟的飞出
    /// </summary>
    /// 
   protected virtual void Next()
    {
        GameManager._instance.birds.Remove(this);
        Destroy(gameObject);
        Instantiate(boom, transform.position, Quaternion.identity);
        GameManager._instance.NextBird();
    }

    private void OnCollisionEnter2D(Collision2D collision)
    {
        isFly = false;
        myTrail.ClearTrails();
    }

    public void AudioPlay(AudioClip clip) {
        AudioSource.PlayClipAtPoint(clip,transform.position);
    }


    /// <summary>
    /// 炫技操作
    /// </summary>
    public virtual void ShowSkill() {
        isFly = false;
    }

    public void Hurt() {
        
        render.sprite = hurt;
    }
}
