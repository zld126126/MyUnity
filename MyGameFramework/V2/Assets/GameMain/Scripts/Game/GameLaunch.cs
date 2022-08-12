using UnityEngine;
using UnityEngine.UI;
using UnityGameFramework.Runtime;

public class GameLaunch : MonoBehaviour
{
    private int clickCount;
    private float lastClickTime;
    
    public Text Money;
    //姓名
    private InputField input_name;
    //设置姓名
    private Button btn_setname;
    //开始按钮
    private Button btn_play;
    //调试按钮
    private Button btn_debug;
    void Start()
    {
        PlayManager.Instance.Start();
        input_name = GameObject.Find("name").GetComponent<InputField>();
        btn_setname=input_name.transform.Find("btn_setname").GetComponent<Button>();
        btn_play = GameObject.Find("btn_play").GetComponent<Button>();
        btn_debug = GameObject.Find("moneyInfo").GetComponent<Button>();
        input_name.onEndEdit.AddListener(EndValue);//文本输入结束时会调用
        input_name.onValueChanged.AddListener(ChangedValue);
        btn_play.onClick.AddListener(PlayGame);
        btn_debug.onClick.AddListener(GameFrameworkDebug);
        Init();
    }
    private void Init()
    {
        LaunchLogic.Instance.Start();
        LetterLogic.Instance.Start();
        MainLogic.Instance.Start();
        Money.text = PlayManager.Instance.money.ToString();
        Debug.LogError("输出名字=="+PlayManager.Instance.playername);
        input_name.text = PlayManager.Instance.playername!=""? PlayManager.Instance.playername:MainLogic.Instance.GenerateSurname(true);
    }

    private void ChangedValue(string value)
    {
        //Debug.Log(value);
    }
    private void EndValue(string value)
    {
        PlayManager.Instance.playername = value;
        input_name.text = value;
    }

    private void PlayGame()
    {
        (GameEntry.Procedure.CurrentProcedure as ProcedureGameLaunch).StartPlay();
        AudioManager.Instance.PlaySound(Config.Click);
    }
    
    public void GameFrameworkDebug()
    {
        if (Time.realtimeSinceStartup - lastClickTime > 0.25f)
        {
            clickCount = 0;
        }
        lastClickTime = Time.realtimeSinceStartup;
        if (++clickCount >= 5)
        {
            clickCount = 0;
            var debugWin = GameEntry.Debugger;
            if (debugWin != null)
            {
                debugWin.ActiveWindow = !debugWin.ActiveWindow;
            }
        }
    }
}
