using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using FairyGUI;

public class BasePanel : Window {

    //属性
    protected string packageName;
    protected Transition transition;
    protected Controller controller;
    protected GComponent panelMask;
    protected UIPanelType currentUIPanelType;
    protected UIMananger uiManager;

    public BasePanel(string packageName,UIPanelType uiPanelType,UIMananger uiManager)
    {
        this.packageName = packageName;
        currentUIPanelType = uiPanelType;
        this.uiManager = uiManager;
        UIPackage.AddPackage("UI/" + packageName);
    }

    protected override void OnInit()
    {
        //执行共有部分
        contentPane = UIPackage.CreateObject(packageName, "Main").asCom;
        panelMask = this.contentPane.GetChild("PanelMask").asCom;
        //执行特有部分
        OnInitPanel();
    }

    protected virtual void OnInitPanel()
    {

    }

    //进入页面
    public void EnterPanel()
    {
        Transition t = panelMask.GetTransition("MaskShow");
        t.Play();
    }

    //进入其他页面
    protected void ToOtherPanel(UIPanelType otherType)
    {
        ExitPanel(()=> { ChangePanelCallBack(otherType); });
    }

    //退出页面
    protected void ExitPanel(PlayCompleteCallback playCompleteCallback)
    {
        Transition t = panelMask.GetTransition("MaskHide");
        t.Play(playCompleteCallback);
    }

    protected void ChangePanelCallBack(UIPanelType otherType)
    {
        uiManager.UIPanelDict[currentUIPanelType].Hide();

        uiManager.UIPanelDict[otherType].Show();
        uiManager.UIPanelDict[otherType].EnterPanel();

        if (uiManager.isGameUIManager)
        {
            GameBasePanel nextPanel = uiManager.UIPanelDict[otherType] as GameBasePanel;
            nextPanel.HandleGameAction(otherType);
        }
    }
}
