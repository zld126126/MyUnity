using UnityEngine;
using System.Collections;

public class Num : MonoBehaviour {

    public int num = 0;
    public int x = 0, y = 0;

    public Vector2 posOffset = Vector2.zero;

    public dfTweenVector2 tweenIn;
    public dfTweenVector2 tweenOut;
    public dfTweenVector3 tweenMove;
    private float tweenInDelayTime = 0;
    public void setDelayTime(float delayTime){
        this.tweenInDelayTime=delayTime;
    }

	// Use this for initialization
	IEnumerator Start () {
        InitShow();
        InitPos();

        tweenMove.TweenCompleted += this.OnTweenMoveCompleted;
        tweenOut.TweenCompleted += this.OnTweenOutCompleted;
        yield return new WaitForSeconds(tweenInDelayTime);
        tweenIn.Play();
	}


    private void InitPos() {
        this.GetComponent<dfControl>().RelativePosition = new Vector3(x * 100 +posOffset.x , y * 100 +posOffset.y , 0);
    }

    private void InitShow() {
        int x = 0, y = 0;
        switch (num) {
            case 1:
                x = 1;y=2;
                break;
            case 2:
                x = 1;y=1;
                break;
            case 3:
                x = 2;y=0;
                break;
            case 4:
                x = 2;y=1;
                break;
            case 5:
                x = 1;y=3;
                break;
            case 6:
                x = 0;y=3;
                break;
            case 7:
                x = 2;y=4;

                break;
            case 8:
                x = 2;y=2;
                break;
            case 9:
                x = 0; y = 1;
                break;
            case 10:
                x = 2;y=3;
                break;
            case 11:
                x = 0;y=2;
                break;
            case 12:
                x = 1;y=0;
                break;
            case 13:
                x = 0;y=0;
                break;


        }

        this.GetComponent<dfTiledSprite>().TileScroll = new Vector2(0.332f * x, 0.162f * y);
    }

    private bool isDisappear = false;
    public void Disappear() {

        isDisappear = true;
    }

    public bool MoveToPosition(int targetX, int targetY,bool isNeedUpdateComponentArray=true) {
        bool temp = x != targetX || y != targetY;
        GameController._instance.numArray[x][y]--;
        GameController._instance.numArray[targetX][targetY]++;
        x = targetX;
        y = targetY;
        if(isNeedUpdateComponentArray)
            GameController._instance.numComponentArray[x][y] = this;
        
        tweenMove.EndValue = new Vector3(targetX * 100 + posOffset.x, targetY * 100 + posOffset.y, 0);
        tweenMove.Play();
        return temp;
    }

    public void OnTweenMoveCompleted(dfTweenPlayableBase sender) {
        if (isDisappear) {
            tweenOut.Play();
        } else {
        }
    }
    public void OnTweenOutCompleted(dfTweenPlayableBase sender) {
        GameController._instance.numArray[x][y]--;
        Destroy(this.gameObject);
    }
    
}
