using UnityEngine;
using System.Collections;

public enum EnemyType{
	smallEnemy,
	middleEnemy,
	bigEnemy
}

public class Enemy : MonoBehaviour {

	public int hp = 1;

	public float speed = 2;

	public int score = 100;

	public EnemyType type= EnemyType.smallEnemy;

	public bool isDeath = false;

	public Sprite[] explosionSprites;

	private float timer=0;

	public int explosionAnimationFrame=10;

	private SpriteRenderer render;

	public float hitTimer = 0.2f;
	private float resetHitTime ;

	public Sprite[] hitSprites;

	// Use this for initialization
	void Start () {
		render = this.GetComponent<SpriteRenderer>();

		resetHitTime=hitTimer;
		hitTimer=0;
	}
	
	// Update is called once per frame
	void Update () {
		this.transform.Translate( Vector3.down*speed*Time.deltaTime );
		if(this.transform.position.y<=-5.6f){
			Destroy(this.gameObject);
		}

		if(isDeath){
				timer+=Time.deltaTime;// 0
				int frameIndex = (int)(timer/(1f/explosionAnimationFrame));
				if(frameIndex>=explosionSprites.Length){
					//destroy
					Destroy(this.gameObject);
				}else{
					render.sprite= explosionSprites[frameIndex];
				}
		}else{
			if(type==EnemyType.middleEnemy||type==EnemyType.bigEnemy){
				if(hitTimer>=0){
					hitTimer-=Time.deltaTime;

					int frameIndex = (int)((resetHitTime-hitTimer)/(1f/explosionAnimationFrame));
					frameIndex%=2;
					render.sprite= hitSprites[frameIndex];
				}
			}
		}

        if (Input.GetKeyDown(KeyCode.Space) && BombManager._instance.count>0 ) {
            toDie();
        }

	}

	public void BeHit(){
		hp-=1;
		// explosion
		if(hp<=0){
			toDie();
		}else{
			hitTimer=resetHitTime;
		}
	}

	private void toDie(){
		if(!isDeath){
			isDeath=true;
			GameManager._instance.score+=score;
		}
	}


}
