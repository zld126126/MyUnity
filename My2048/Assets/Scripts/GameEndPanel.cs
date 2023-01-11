using UnityEngine;
using System.Collections;

public class GameEndPanel : MonoBehaviour {

    public static GameEndPanel _instance;

    public dfTweenVector3 tween;

    public dfLabel score;

    void Awake() {
        _instance = this;
    }

   

    public void Show() {
        
        dfControl control = this.GetComponent<dfControl>();
        tween.EndValue = new Vector3((control.GUIManager.GetScreenSize().x - control.Width) / 2, (control.GUIManager.GetScreenSize().y - control.Height) / 2, 0);
        tween.Play();
        score.Text = ScoreManager._instance.score + "";
        ScoreManager._instance.UpdateHighScore();

    }

}
