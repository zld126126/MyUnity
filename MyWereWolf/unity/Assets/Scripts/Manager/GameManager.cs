using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using FairyGUI;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour {

    //UI相关
    [HideInInspector]
    public bool isInGame;
    private UIMananger currentUIManager;

    //单例
    private static GameManager _instance;
    public static GameManager Instance
    {
        get
        {
            return _instance;
        }

        set
        {
            _instance = value;
        }
    }

    //声音相关
    [HideInInspector]
    public AudioSourceManager audioSourceManager;
    public AudioSource audioSource;
    public AudioClip[] audioClip;
    public AudioClip buttonSound;

    //信息处理
    [HideInInspector]
    public MessageManager messageManager;
    

    private void Awake()
    {
        DontDestroyOnLoad(this.gameObject);
        Instance = this;
        //加载资源包
        UIPackage.AddPackage("UI/Res_Main");
        UIPackage.AddPackage("UI/Res_Game");
        UIPackage.AddPackage("UI/Res_Component");
        UIConfig.defaultFont = "汉仪南宫体简";
        UIConfig.buttonSound =buttonSound;
        GRoot.inst.SetContentScaleFactor(1600, 900, UIContentScaler.ScreenMatchMode.MatchWidthOrHeight);
        if (currentUIManager==null)
        {
            currentUIManager = new UIMananger();
            currentUIManager.MainUIManager();

        }
        if (audioSourceManager==null)
        {
            audioSourceManager = new AudioSourceManager(this);
        }
        if (messageManager==null)
        {
            messageManager = new MessageManager();
            messageManager.InitMessage();
        }
    }

    // Use this for initialization
    void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    public void ChangeLanguage(FairyGUI.Utils.XML xML)
    {
        UIPackage.SetStringsSource(xML);
        UIPackage.RemoveAllPackages();
        UIPackage.AddPackage("UI/Res_Main");
        UIPackage.AddPackage("UI/Res_Game");
        UIPackage.AddPackage("UI/Res_Component");
        currentUIManager.MainUIManager();
        audioSourceManager.ChangeBGM(0);
        SceneManager.LoadSceneAsync(0);
    }


    public void ToGame()
    {
        Invoke("ToTheGame", 0.4f);
    }

    public void ToTheGame()
    {
        currentUIManager.GameUIManager();
        audioSourceManager.ChangeBGM(2);
        SceneManager.LoadSceneAsync(2);
    }

    public void ToMain()
    {
        Invoke("ToTheMain", 0.4f);
    }

    public void ToTheMain()
    {
        currentUIManager.MainUIManager();
        audioSourceManager.ChangeBGM(0);
        SceneManager.LoadSceneAsync(1);
    }
}
