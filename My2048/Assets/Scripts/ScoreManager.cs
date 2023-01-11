using UnityEngine;
using System.Collections;

public class ScoreManager : MonoBehaviour {

    public dfLabel nowScore;
    public dfLabel highScore;

    public int score = 0;

    public static ScoreManager _instance;
    void Awake() {
        _instance = this;
    }

    void Start() {
        UpdateScore();
    }

    public void UpdateScore() {
        nowScore.Text = score + "";
        highScore.Text = PlayerPrefs.GetFloat("hightScore", 0) + "";
    }

    public void AddScore(int score) {
        this.score += score;
        UpdateScore();
    }

    public void UpdateHighScore() {
        float storeHighSocre = PlayerPrefs.GetFloat("hightScore", 0);
           if(score>storeHighSocre){
               PlayerPrefs.SetFloat("hightScore",score);
           }
    }

}
