using UnityEngine;
using System.Collections;

public class Enemy : MonoBehaviour {

    private Transform player;
    public float attackDistance = 25;
    private Animator anim;
    public float speed = 5;

	// Use this for initialization
	void Start () {
        player = GameObject.FindGameObjectWithTag("Player").transform;
        anim = this.GetComponent<Animator>();
	}
	
	// Update is called once per frame
	void Update () {
        float distance = Vector3.Distance( player.position,transform.position);

        if (distance < attackDistance) {
            //进行攻击
            anim.SetBool("Run", true);
            if (player.position.x < transform.position.x) {
                transform.localScale = new Vector3(-1, 1, 1);
            } else {
                transform.localScale = new Vector3(1, 1, 1);
            }
            Vector3 dir = player.position - transform.position;
            transform.position = dir.normalized * speed * Time.deltaTime + transform.position;
        } else {
            // 睡眠
            anim.SetBool("Run", false);
        }
	}
}
