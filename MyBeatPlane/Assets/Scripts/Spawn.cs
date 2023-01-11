using UnityEngine;
using System.Collections;

public class Spawn : MonoBehaviour {

	public GameObject enemy0Prefab;
	public GameObject enemy1Prefab;
	public GameObject enemy2Prefab;

	
	public GameObject awardType0Prefab;
	public GameObject awardType1Prefab;
	
	public float enemy0Rate = 0.5f;
	public float enemy1Rate = 5f;
	public float enemy2Rate = 8f;

	public float awardType0Rate = 7;

	public float awardType1Rate = 10;

	// Use this for initialization
	void Start () {
		InvokeRepeating("createEnemy0",1,enemy0Rate);
		InvokeRepeating("createEnemy1",3,enemy1Rate);
		InvokeRepeating("createEnemy2",6,enemy2Rate);

		InvokeRepeating("createAwardType0",10,awardType0Rate);
		InvokeRepeating("createAwardType1",10,awardType1Rate);


	}
	
	// Update is called once per frame
	void Update () {
	
	}
	
	public void createEnemy0(){
		float x = Random.Range(-2.15f,2.15f);
		GameObject.Instantiate(enemy0Prefab,new Vector3(x,transform.position.y,0),Quaternion.identity);
		
	}
	public void createEnemy1(){
		float x = Random.Range(-2.04f,2.04f);
		GameObject.Instantiate(enemy1Prefab,new Vector3(x,transform.position.y,0),Quaternion.identity);
		
	}
	public void createEnemy2(){
		float x = Random.Range(-2.04f,2.04f);
		GameObject.Instantiate(enemy2Prefab,new Vector3(x,transform.position.y,0),Quaternion.identity);
		
	}


	public void createAwardType0(){
		GetComponent<AudioSource>().Play();
		float x = Random.Range(-2.1f,2.1f);
		GameObject.Instantiate(awardType0Prefab,new Vector3(x,transform.position.y,0),Quaternion.identity);
	}
	public void createAwardType1(){
		GetComponent<AudioSource>().Play();
		float x = Random.Range(-2.1f,2.1f);
		GameObject.Instantiate(awardType1Prefab,new Vector3(x,transform.position.y,0),Quaternion.identity);
	}
}
