using UnityEngine;
using System.Collections;

public class PlayerMove : MonoBehaviour {

    public float force_move = 50;
    public float jumpVelocity = 10;
    private Animator anim;
    private bool isGround = false;
    public bool isWall = false;//是否在墙上
    private bool isSlide = false;

    private Transform wallTrans;

    void Awake() {
        anim = this.GetComponent<Animator>();
    }
	// Update is called once per frame
	void Update () {
        float h = Input.GetAxis("Horizontal");

        if (isSlide == false) {
            Vector2 velocity = GetComponent<Rigidbody2D>().velocity;

            if (h > 0.05f) {
                GetComponent<Rigidbody2D>().AddForce(Vector2.right * force_move);
            } else if (h < -0.05f) {
                GetComponent<Rigidbody2D>().AddForce(-Vector2.right * force_move);
            }

            //修改朝向
            if (h > 0.05f) {//朝向右方向
                transform.localScale = new Vector3(1, 1, 1);
            } else if (h < -0.05f) {
                transform.localScale = new Vector3(-1, 1, 1);
            }

            anim.SetFloat("horizontal", Mathf.Abs(h));

            if (isGround && Input.GetKeyDown(KeyCode.Space)) {
                //进行跳跃
                velocity.y = jumpVelocity;
                GetComponent<Rigidbody2D>().velocity = velocity;
                if (isWall) {
                    GetComponent<Rigidbody2D>().gravityScale = 5;
                }
            }

            anim.SetFloat("vertical", GetComponent<Rigidbody2D>().velocity.y);
        } else {
            //当我们在墙上滑行的时候
        }

        if (isWall == false || isGround == true) {
            isSlide = false;
        }
	}

    public void OnCollisionEnter2D(Collision2D col ) {
        if (col.collider.tag == "Ground") {
            isGround = true;
            GetComponent<Rigidbody2D>().gravityScale = 30;
        }
        if (col.collider.tag == "Wall") {
            isWall = true;
            GetComponent<Rigidbody2D>().velocity = Vector2.zero;
            GetComponent<Rigidbody2D>().gravityScale = 5;
            wallTrans = col.collider.transform;
        }
        anim.SetBool("isGround", isGround);
        anim.SetBool("isWall", isWall);
    }
    public void OnCollisionExit2D(Collision2D col) {
        if (col.collider.tag == "Ground") {
            isGround = false;
        }
        if (col.collider.tag == "Wall") {
            isWall = false;
            GetComponent<Rigidbody2D>().gravityScale = 30;
        }
        anim.SetBool("isGround", isGround);
        anim.SetBool("isWall", isWall);
    }
    //更改朝向
    public void ChangeDir() {
        isSlide = true;
        if (wallTrans.position.x < transform.position.x) {
            transform.localScale = new Vector3(1, 1, 1);
        } else {
            transform.localScale = new Vector3(-1, 1, 1);
        }
    }

}
