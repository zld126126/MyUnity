using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using FairyGUI;

public class GameBasePanel : BasePanel
{
    protected GComponent openAnimCom;
    protected GComponent closeAnimCom;
    protected GComponent guideMessage;
    protected GMovieClip openEye;
    protected GMovieClip closeEye;

    //涉及到动画结束事件的回调，只能注册一次，否则动画的播放与方法的执行会紊乱
    private bool firstTimeInThisPanel=true;
    //天亮天黑页面需要一些特殊处理
    public bool isDayNightPanel;

    //下一个界面，用于责任链模式
    protected GameBasePanel nextPanel;

    //设置下一个操作对象
    public GameBasePanel SetNextPanel(GameBasePanel nextGamePanel)
    {
        nextPanel = nextGamePanel;
        return nextPanel;
    }

    protected Controller messageController;
    protected MessageManager messageManager;
    protected GButton certainButton;

    public GameBasePanel(string packageName, UIPanelType uiPanelType, UIMananger uiManager) : base(packageName, uiPanelType, uiManager)
    {
        messageManager = GameManager.Instance.messageManager;
        if (uiPanelType==UIPanelType.DayNightPanel)
        {
            isDayNightPanel = true;
        }

    }

    protected override void OnInitPanel()
    {
        if (!isDayNightPanel)
        {
            openAnimCom = contentPane.GetChild("EyeOpen").asCom;
            closeAnimCom = contentPane.GetChild("EyeClose").asCom;
            openEye = openAnimCom.GetChild("Anim_Eye").asMovieClip;
            closeEye = closeAnimCom.GetChild("Anim_Eye").asMovieClip;
            certainButton = contentPane.GetChild("Btn_Certain").asButton;
        }

        guideMessage = contentPane.GetChild("GuideMessage").asCom;
        messageController = guideMessage.GetController("c1");
        controller = contentPane.GetController("c1");
    }

    public virtual void HandleGameAction(UIPanelType currentGamePanelType)
    {

    }

    public virtual void ToCurrentPanel()
    {
        controller.selectedIndex = 0;
        messageController.selectedIndex = 0;
        openEye.visible = true;
        closeEye.visible = false;
        openEye.SetPlaySettings(1, 16,1,0);
        openEye.playing = true;
        if (firstTimeInThisPanel)
        {
            openEye.onPlayEnd.Add(()=> { controller.selectedIndex = 1;messageController.selectedIndex = 1;openEye.visible = false; });
        }
    }

    protected void AfterAction(UIPanelType nextType)
    {
        if (!isDayNightPanel)
        {
            controller.selectedIndex = 3;
            messageController.selectedIndex = 3;
        }
        else
        {
            controller.selectedIndex = 8;
        }
        ToNextPanel(nextType);
    }

    protected void ToNextPanel(UIPanelType nextType)
    {
        if (!isDayNightPanel)
        {
            closeEye.visible = true;
            if (firstTimeInThisPanel)
            {
                firstTimeInThisPanel = false;
                closeEye.onPlayEnd.Add(() =>
                {
                    ToOtherPanel(nextType);
                    closeEye.visible = false;
                });
                    
                    
            }
            closeEye.SetPlaySettings(1, 18, 1, 18);
            closeEye.playing = true;
        }
        else
        {
            Transition ToNight = contentPane.GetTransition("ToNight");
            ToNight.Play(() =>
            {
                ToOtherPanel(nextType);
            });
        }
    }
}
