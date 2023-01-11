using UnityEngine;
using System.Collections;

public class RankItem : MonoBehaviour {

    public int score;
    public string date;

    public dfTiledSprite sprite;
    public dfLabel scoreLabel;
    public dfLabel dateLabel;

    void Start() {
       //etShow(2, "2014-7-15", "1000");
    }

    public void SetShow(int ranknumber, string dateStr, string score) {
        sprite.TileScroll = new Vector2(ranknumber * 0.1f, 0);
        dateLabel.Text = dateStr;
        scoreLabel.Text = score;

        
    }


}
