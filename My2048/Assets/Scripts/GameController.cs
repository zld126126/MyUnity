using UnityEngine;
using System.Collections;

public enum GameState {
    Playing,
    Pause,
    End
}
public enum TouchDir {
    Left,Right,Top,Bottom,None
}

public class GameController : MonoBehaviour {

    public static GameController _instance;

    public GameObject numPrefab;

    public GameState state = GameState.Playing;

    public int[][] numArray = new int[4][]{
        new int[4]{0,0,0,0},
        new int[4]{0,0,0,0},
        new int[4]{0,0,0,0},
        new int[4]{0,0,0,0}
    };
    public Num[][] numComponentArray = new Num[4][]{
        new Num[4]{null,null,null,null},
        new Num[4]{null,null,null,null},
        new Num[4]{null,null,null,null},
        new Num[4]{null,null,null,null}
    };

    void Awake() {
        _instance = this;
    }

	// Use this for initialization
    void Start() {
        GenerateNumber();
        GenerateNumber();
        GenerateNumber();
        GenerateNumber();
        GenerateNumber();
        GenerateNumber();
        GenerateNumber();
        GenerateNumber();
        GenerateNumber();
        GenerateNumber();
        GenerateNumber();
        GenerateNumber();
        GenerateNumber();
        GenerateNumber();
	}
	
	// Update is called once per frame
	void Update () {
        switch (state) {
            case GameState.Playing:
                MoveNum();
                break;
            case GameState.Pause:
                break;
            case GameState.End:
                break;
        }
	}

    private void GenerateNumber(int posX=-1,int posY=-1,int number=1,float tweenInDelayTime=0) {
        int numberX = -1; int numberY = -1;
        if (posX == -1 || posY == -1) {
            int countOfEmptyNum = 0;
            for (int x = 0; x < 4; x++) {
                for (int y = 0; y < 4; y++) {
                    if (numArray[x][y] == 0)
                        countOfEmptyNum++;
                }
            }
            if (countOfEmptyNum == 0) {
                return;
            }
            int randomNum = Random.RandomRange(1, countOfEmptyNum + 1);
            int index = 0;
            for (int x = 0; x < 4; x++) {
                for (int y = 0; y < 4; y++) {
                    if (numArray[x][y] == 0) {
                        index++;
                        if (index == randomNum) {
                            numberX = x; numberY = y;
                            goto flag;
                        }
                    }
                }
            }
        } else {
            numberX = posX;
            numberY = posY;
        }
    flag:
        //create a num 
        dfControl numdfControl =  this.GetComponent<dfControl>().AddPrefab(numPrefab);
        Num num = numdfControl.GetComponent<Num>();
            // num.num = 1 
        num.setDelayTime(tweenInDelayTime);
        num.num = number;
        num.x = numberX;
        num.y = numberY;

        numArray[numberX][numberY]++;
        numComponentArray[numberX][numberY] = num;
    }

    private bool CheckWin() {
        for (int x = 0; x < 4; x++) {
            for (int y = 0; y < 4; y++) {
                if (numArray[x][y] != 0) {
                    if (numComponentArray[x][y].num == 13)
                        return true;
                }
            }
        }
        return false;
    }
    private bool CheckGameOver() {
        for (int x = 0; x < 4; x++) {
            for (int y = 0; y < 4; y++) {
                if (numArray[x][y] == 0) {
                    return false;
                }
            }
        }

        for (int x = 0; x < 4; x++) {
            for (int y = 0; y < 3; y++) {
                if (numComponentArray[x][y].num == numComponentArray[x][y + 1].num) {
                    return false;
                }
            }
        }

        for (int y = 0; y < 4; y++) {
            for (int x = 0; x < 3; x++) {
                if (numComponentArray[x][y].num == numComponentArray[x+1][y].num) {
                    return false;
                }
            }
        }
        return true;
    }

    private Vector3 mouseDownPosition;
    private void MoveNum() {
        bool isAnyNumMove = false;
        int countCombine = 0;
        //1.Get touch dir
        if (Input.GetMouseButtonDown(0)) {
            mouseDownPosition = Input.mousePosition;
        }
        if (Input.GetMouseButtonUp(0) == false) return;
        TouchDir dir = GetTouchDir();
        switch (dir) {
            case TouchDir.None:
                return;
            case TouchDir.Right:
                for (int y = 0; y < 4; y++) {
                    Num preNum = null;
                    int index = 4;
                    for (int x = 3; x >= 0; x--) {
                        bool isNeedUpdateComponentArray = true;
                        if (numArray[x][y] == 0) continue;
                        if (preNum == null) {
                            preNum = numComponentArray[x][y];
                            index--;
                        } else {
                            if (preNum.num == numComponentArray[x][y].num) {
                                // 合并这两个都移动到目标位置 然后消失 然后创建出来合并后的数字
                                countCombine++;
                                GenerateNumber(index, y,  preNum.num + 1,0.4f);
                                //calc score
                                ScoreManager._instance.AddScore( (int) Mathf.Pow(2, preNum.num + 1)); 
                                preNum.Disappear();
                                numComponentArray[x][y].Disappear();
                                preNum = null;
                                isNeedUpdateComponentArray = false;
                            } else {
                                preNum = numComponentArray[x][y];
                                index--;
                            }
                        }
                        // move to (index,y)
                        if (numComponentArray[x][y].MoveToPosition(index, y,isNeedUpdateComponentArray)) {
                            isAnyNumMove = true;
                        }
                    }
                }
                    break;
            case TouchDir.Left:
                    for (int y = 0; y < 4; y++) {
                        Num preNum = null;
                        int index = -1;
                        for (int x = 0; x < 4; x++) {
                            bool isNeedUpdateComponentArray = true;
                            if (numArray[x][y] == 0) continue;
                            if (preNum == null) {
                                preNum = numComponentArray[x][y];
                                index++;
                            } else {
                                if (preNum.num == numComponentArray[x][y].num) {
                                    // 合并这两个都移动到目标位置 然后消失 然后创建出来合并后的数字
                                    countCombine++;
                                    GenerateNumber(index, y, preNum.num + 1, 0.4f);
                                    //calc score
                                    ScoreManager._instance.AddScore((int)Mathf.Pow(2, preNum.num + 1));
                                    preNum.Disappear();
                                    numComponentArray[x][y].Disappear();
                                    preNum = null;
                                    isNeedUpdateComponentArray = false;
                                } else {
                                    preNum = numComponentArray[x][y];
                                    index++;
                                }
                            }
                            // move to (index,y)
                            if (numComponentArray[x][y].MoveToPosition(index, y,isNeedUpdateComponentArray)) {
                                isAnyNumMove = true;
                            }
                        }
                    }
                break;
            case TouchDir.Top:
                for (int x = 0; x < 4; x++) {
                    Num preNum = null;
                    int index = -1;
                    for (int y = 0; y < 4; y++) {
                        bool isNeedUpdateComponentArray = true;
                        if (numArray[x][y] == 0) continue;
                        if (preNum == null) {
                            preNum = numComponentArray[x][y];
                            index++;
                        } else {
                            if (preNum.num == numComponentArray[x][y].num) {
                                // 合并这两个都移动到目标位置 然后消失 然后创建出来合并后的数字
                                countCombine++;
                                GenerateNumber(x, index, preNum.num + 1, 0.4f);
                                //calc score
                                ScoreManager._instance.AddScore((int)Mathf.Pow(2, preNum.num + 1));
                                preNum.Disappear();
                                numComponentArray[x][y].Disappear();
                                preNum = null;
                                isNeedUpdateComponentArray = false;
                            } else {
                                preNum = numComponentArray[x][y];
                                index++;
                            }
                        }
                        // move to (index,y)
                        if (numComponentArray[x][y].MoveToPosition(x, index,isNeedUpdateComponentArray) ) {
                            isAnyNumMove = true;
                        }
                    }
                }
                break;
            case TouchDir.Bottom:
                for (int x = 0; x < 4; x++) {
                    Num preNum = null;
                    int index = 4;
                    for (int y = 3; y >= 0; y--) {
                        bool isNeedUpdateComponentArray = true;
                        if (numArray[x][y] == 0) continue;
                        if (preNum == null) {
                            preNum = numComponentArray[x][y];
                            index--;
                        } else {
                            if (preNum.num == numComponentArray[x][y].num) {
                                // 合并这两个都移动到目标位置 然后消失 然后创建出来合并后的数字
                                countCombine++;
                                GenerateNumber(x, index, preNum.num + 1, 0.4f);
                                //calc score
                                ScoreManager._instance.AddScore((int)Mathf.Pow(2, preNum.num + 1));
                                preNum.Disappear();
                                numComponentArray[x][y].Disappear();
                                preNum = null;
                                isNeedUpdateComponentArray = false;
                            } else {
                                preNum = numComponentArray[x][y];
                                index--;
                            }
                        }
                        // move to (index,y)
                        if (numComponentArray[x][y].MoveToPosition(x, index , isNeedUpdateComponentArray)) {
                            isAnyNumMove = true;
                        }
                    }
                }
                break;
        }

        if (countCombine > 0) {
            GetComponent<AudioSource>().Play();
        }
        if(isAnyNumMove)
            GenerateNumber();

        if (CheckWin() || CheckGameOver()) {
            // 显示出来游戏结束的界面
            GameEndPanel._instance.Show();
        }
    }

    private TouchDir GetTouchDir() {
        if (Input.GetMouseButtonUp(0)) {
            Vector3 touchOffset =  Input.mousePosition - mouseDownPosition;
            if (Mathf.Abs(touchOffset.x) > Mathf.Abs(touchOffset.y) && Mathf.Abs(touchOffset.x) > 50) {
                if (touchOffset.x > 0) {
                    return TouchDir.Right;
                }
            }
            if (Mathf.Abs(touchOffset.x) > Mathf.Abs(touchOffset.y) && Mathf.Abs(touchOffset.x) > 50) {
                if (touchOffset.x < 0) {
                    return TouchDir.Left;
                }
            }
            if (Mathf.Abs(touchOffset.x) < Mathf.Abs(touchOffset.y) && Mathf.Abs(touchOffset.y) > 50) {
                if (touchOffset.y < 0) {
                    return TouchDir.Bottom;
                }
            }
            if (Mathf.Abs(touchOffset.x) < Mathf.Abs(touchOffset.y) && Mathf.Abs(touchOffset.y) > 50) {
                if (touchOffset.y > 0) {
                    return TouchDir.Top;
                }
            }

        }
        return TouchDir.None;
    }
}
