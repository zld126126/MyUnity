/****************************************************
    文件：LoginSys.cs
	作者：SIKI学院——Plane
    邮箱: 1785275942@qq.com
    日期：2018/12/3 5:31:49
	功能：登录注册业务系统
*****************************************************/

using PEProtocol;

public class LoginSys : SystemRoot {
    public static LoginSys Instance = null;

    public LoginWnd loginWnd;
    public CreateWnd createWnd;

    public override void InitSys() {
        base.InitSys();

        Instance = this;
        PECommon.Log("Init LoginSys...");
    }

    /// <summary>
    /// 进入登录场景
    /// </summary>
    public void EnterLogin() {
        //异步的加载登录场景
        //并显示加载的进度
        resSvc.AsyncLoadScene(Constants.SceneLogin, () => {
            //加载完成以后再打开注册登录界面
            loginWnd.SetWndState();
            audioSvc.PlayBGMusic(Constants.BGLogin);
        });
    }

    public void RspLogin(GameMsg msg) {
        GameRoot.AddTips("登录成功");
        GameRoot.Instance.SetPlayerData(msg.rspLogin);

        if (msg.rspLogin.playerData.name == "") {
            createWnd.SetWndState();
        }
        else {
            MainCitySys.Instance.EnterMainCity();
        }
        //关闭登录界面
        loginWnd.SetWndState(false);
    }

    public void RspRename(GameMsg msg) {
        GameRoot.Instance.SetPlayerName(msg.rspRename.name);

        //跳转场景进入主城
        MainCitySys.Instance.EnterMainCity();
        //关闭创建界面
        createWnd.SetWndState(false);
    }
}