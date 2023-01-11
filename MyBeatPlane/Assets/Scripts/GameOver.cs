using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class GameOver : MonoBehaviour {
    public static GameOver _instance;

    public Text highScore;
    public Text nowScore;

    void Awake() {
        _instance = this;
        this.gameObject.SetActive(false);
    }

    public void Show(float nowScore) {
        float historyScore = PlayerPrefs.GetFloat("historyHighScore", 0);
        if (nowScore > historyScore) {
            PlayerPrefs.SetFloat("historyHighScore", nowScore);
        }
        highScore.text = historyScore + "";
        this.nowScore.text = nowScore + "";

        this.gameObject.SetActive(true);
    }


}
