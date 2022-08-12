using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

//结算
public class GameClear : MonoBehaviour
{
    public Sprite[] shadows;
    public Sprite[] cakeSprite;
    public Image cakeShadow;
    public Image cakeMask;
    public Image cakeImage;
    public Text Money;
    public Button doubleClick;
    public Text doubleText;
    public Button sinClick;
    public Text sinText;
    public Button btn_menu;

    public Text pro;
    private bool isStart = false;
    private int startNum;
    private float time = 0;
    private int target = 0;
    int currTime;
    private float maskHeight = 0;

    private int changetime = 1;

    private Queue<ChangeTypeBase> queue = new Queue<ChangeTypeBase>();

    private ChangeTypeBase curChange;

    // Start is called before the first frame update
    void Start()
    {
        EventManager.Instance.AddListening(Config.GameClearRefresh, UIRefreh);
        //显示普通按钮金币
        sinText.text = MainLogic.Instance.CurMoney.ToString();
        //显示双倍按钮金币
        doubleText.text = (MainLogic.Instance.CurMoney * 2).ToString();
        //显示关卡图片
        cakeShadow.sprite = shadows[PlayManager.Instance.Level];
        cakeShadow.SetNativeSize();
        //设置Mask的大小
        SetMaskSize(0);
        cakeImage.sprite = cakeSprite[PlayManager.Instance.Level];
        cakeImage.SetNativeSize();
        //设置mask的总高
        maskHeight = cakeShadow.transform.GetComponent<RectTransform>().sizeDelta.y;
        Money.text = PlayManager.Instance.money.ToString();
        AddListener();
        SetSizeByProgress();

        btn_menu = GameObject.Find("btn_menu").GetComponent<Button>();
        btn_menu.onClick.AddListener(GameMenu);
    }

    private void UIRefreh()
    {
    }


    void AddListener()
    {
        doubleClick.onClick.AddListener(DoubleClick);
        sinClick.onClick.AddListener(Click);
    }

    void SetSizeByProgress()
    {
        MainLogic.JieSuanType type = MainLogic.Instance.Vectory;
        int addNum = 0;
        int Start = PlayManager.Instance.ProGress;
        pro.text = Start.ToString() + "%";
        SetMaskSize((Start / 100f) * maskHeight);
        if (type == MainLogic.JieSuanType.Defeate)
        {
            //失败加10%
            addNum = 10;
        }
        else if (type == MainLogic.JieSuanType.Vectort)
        {
            //胜利加15%
            addNum = 15;
        }

        target = Start + addNum;
        currTime = Start;
        startNum = Start;
        //设置数据
        PlayManager.Instance.ProGress = addNum;
        if (target > 100)
        {
            int otherPro = target - 100;
            target = 100;
            ChangeTypeBase ChangeText = new EaseoutType(Start, target, changetime);
            ChangeTypeBase otherChangeText = new EaseoutType(0, otherPro, changetime);
            queue.Enqueue(ChangeText);
            queue.Enqueue(otherChangeText);
        }
        else
        {
            ChangeTypeBase ChangeText = new EaseoutType(Start, target, changetime);
            queue.Enqueue(ChangeText);
        }

        curChange = SetQueue();
        isStart = true;
    }

    //视频双倍
    private void DoubleClick()
    {
        //多给一倍的钱
        AudioManager.Instance.PlaySound(Config.Click);
        PlayManager.Instance.money = MainLogic.Instance.CurMoney;
        Money.text = PlayManager.Instance.money.ToString();
        MainLogic.Instance.ClearBattleType();
        EventManager.Instance.StopListening(Config.GameClearRefresh, UIRefreh);

        (GameEntry.Procedure.CurrentProcedure as ProcedureBattleClear).Replay();
    }

    //返回主界面
    private void Click()
    {
        AudioManager.Instance.PlaySound(Config.Click);
        MainLogic.Instance.ClearBattleType();
        EventManager.Instance.StopListening(Config.GameClearRefresh, UIRefreh);

        (GameEntry.Procedure.CurrentProcedure as ProcedureBattleClear).Replay();
    }

    // Update is called once per frame
    void Update()
    {
        if (!isStart) return;
        if (curChange == null) return;
        time += Time.deltaTime;
        if (time >= changetime)
        {
            isStart = false;
            startNum = target;
            pro.text = target.ToString() + "%";
            curChange = SetQueue();
            if (curChange != null)
            {
                cakeShadow.sprite = shadows[PlayManager.Instance.Level];
                cakeShadow.SetNativeSize();
                SetMaskSize(0);
                cakeImage.sprite = cakeSprite[PlayManager.Instance.Level];
                cakeImage.SetNativeSize();
                maskHeight = cakeShadow.transform.GetComponent<RectTransform>().sizeDelta.y;
                int Start = 0;
                pro.text = Start.ToString() + "%";
                SetMaskSize((Start / 100f) * maskHeight);
                target = PlayManager.Instance.ProGress;
                currTime = Start;
                startNum = Start;
                isStart = true;
            }

            time = 0;
            return;
        }

        int catchNum = startNum + curChange.ChangeText(time);
        //避免一样的值
        if (catchNum == currTime)
        {
            return;
        }

        currTime = catchNum;
        pro.text = catchNum.ToString() + "%";
        SetMaskSize((currTime / 100f) * maskHeight);
    }

    private void SetMaskSize(float y)
    {
        cakeMask.transform.GetComponent<RectTransform>().sizeDelta =
            new Vector2(cakeShadow.transform.GetComponent<RectTransform>().sizeDelta.x, y);
    }

    private ChangeTypeBase SetQueue()
    {
        if (queue.Count > 0)
        {
            return queue.Dequeue();
        }

        return null;
    }

    private void GameMenu()
    {
        AudioManager.Instance.PlaySound(Config.Click);
        (GameEntry.Procedure.CurrentProcedure as ProcedureBattleClear).GameMenu();
    }
}