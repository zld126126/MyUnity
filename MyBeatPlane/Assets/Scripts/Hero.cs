using UnityEngine;
using System.Collections;

public class Hero : MonoBehaviour {

	public bool animation = true;

	public int frameCountPersconds = 10;

	public float timer  = 0;

	public Sprite[] sprites;

	public float superGunTime = 10f;

	public Gun gunTop;
	public Gun gunLeft;
	public Gun gunRight;

	private float resetSuperGunTime ;

	private SpriteRenderer spriteRender;

	private bool isMouseDown = false;

	private Vector3 lastMousePosition = Vector3.zero;

	private Transform hero;

	private int gunCount =1;

	void Start(){
		spriteRender = this.GetComponent<SpriteRenderer>();
		hero = GameObject.FindGameObjectWithTag("Player").transform;

		resetSuperGunTime = superGunTime;
		superGunTime=0;

		gunTop.openFire();
	}

	// Update is called once per frame
	void Update () {
		if(animation){
			timer+=Time.deltaTime;// 1f/frameCountPersconds
			int frameIndex = (int)(timer/(1f/frameCountPersconds));
			int frame = frameIndex%2;
			spriteRender.sprite = sprites[frame];
		}
		if(Input.GetMouseButtonDown(0)){
			isMouseDown=true;
		}
		if(Input.GetMouseButtonUp(0)){
			isMouseDown=false;
			lastMousePosition = Vector3.zero;
		}
		if(isMouseDown && GameManager._instance.gameState==GameState.Runing ){
			if(lastMousePosition!=Vector3.zero){
				//Camera.main.ScreenToWorldPoint(Input.mousePosition)
				//print (Camera.main.ScreenToWorldPoint(Input.mousePosition));
				Vector3 offset = Camera.main.ScreenToWorldPoint(Input.mousePosition) -lastMousePosition;

				transform.position = transform.position+offset;
				checkPosition();
			}
			lastMousePosition = Camera.main.ScreenToWorldPoint(Input.mousePosition);
		}
		superGunTime-=Time.deltaTime;
		if(superGunTime>0){
			if(gunCount==1){
				transformToSuperGun();
			}
		}else{
			if(gunCount==2){
				tranformToNormalGun();
			}
		}
	}

	private void transformToSuperGun(){
		gunCount=2;
		gunLeft.openFire();
		gunRight.openFire();
		gunTop.stopFire();
	}
	private void tranformToNormalGun(){
		gunCount=1;
		
		gunLeft.stopFire();
		gunRight.stopFire();
		gunTop.openFire();
	}


	private void checkPosition(){
		//check x -2.22f +2.22f
		// check y -3.9 3.4
		Vector3 pos = transform.position;
		float x = pos.x;
		float y = pos.y;
		if(x<-2.22f){
			x=-2.22f;
		}
		if(x>2.22f){
			x=2.22f;
		}
		if(y<-3.9f){
			y=-3.9f;
		}
		if(y>3.4f){
			y=3.4f;
		}
		transform.position= new Vector3(x,y,0);
	}

	public void OnTriggerEnter2D(Collider2D collider){
		if(collider.tag=="Award"){
			GetComponent<AudioSource>().Play();
			Award award = collider.GetComponent<Award>();
			if(award.type==0){
				//transform gun
				superGunTime=resetSuperGunTime;
				Destroy(collider.gameObject);
            } else if (award.type == 1) {
                BombManager._instance.AddABomb();
                Destroy(collider.gameObject);
            }
        } else if (collider.tag == "Enemy") {
            Destroy(this.gameObject);
            GameOver._instance.Show( GameManager._instance.score );
            BombManager._instance.gameObject.SetActive(false);
        }

	}
}
