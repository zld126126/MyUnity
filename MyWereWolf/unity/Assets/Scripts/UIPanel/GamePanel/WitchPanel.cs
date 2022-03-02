using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using FairyGUI;

public class WitchPanel : GameBasePanel
{
    //需要获取一下成员变量并且初始化
    private GButton saveButton;
    private GButton killButton;
    private GButton toNextButton;
    private GTextField killNumber;
    private GTextField wolfKillNumber;

    public WitchPanel(string packageName, UIPanelType uiPanelType, UIMananger uiManager) : base(packageName, uiPanelType, uiManager)
    {
    }

    //初始化
    protected override void OnInitPanel()
    {
        base.OnInitPanel();
        //特有的东西
        wolfKillNumber = contentPane.GetChild("Tex_WolfKillNumber").asTextField;
        saveButton = contentPane.GetChild("Btn_Save").asButton;
        //救人
        saveButton.onClick.Add(() =>
        {
            if (messageManager.wolfKillNumber!=0)
            {
                messageManager.canSave = false;
                messageManager.hasSave = true;
                killNumber.text = 0.ToString();
                wolfKillNumber.text = 0.ToString();
            }
            AfterAction(UIPanelType.ProphetPanel);
        });
        //撒毒
        killButton = contentPane.GetChild("Btn_Kill").asButton;
        killButton.onClick.Add(() => 
        {
            controller.selectedIndex = 2;
            messageController.selectedIndex = 2;
        });
        killNumber = contentPane.GetChild("Tex_KillNumber").asTextField;
        certainButton.onClick.Add(() =>
        {
            int num = 0;
            if (killNumber.text!=null)
            {
                num = System.Convert.ToInt32(killNumber.text);
            }

            if (num==messageManager.witch||num<0||num>12)
            {
                killNumber.text = 0.ToString();
                return;
            }

            for (int i = 0; i < messageManager.deadPlayerNum.Count; i++)
            {
                if (messageManager.deadPlayerNum[i]==num)
                {
                    killNumber.text = 0.ToString();
                    return;
                }
            }

            if (num!=0)
            {
                messageManager.canKill = false;
                messageManager.witchKillNumber = num;
            }

            if (num==messageManager.hunter)
            {
                messageManager.canShoot = false;
            }

            killNumber.text = 0.ToString();
            wolfKillNumber.text = 0.ToString();
            AfterAction(UIPanelType.ProphetPanel);

        });

        toNextButton = contentPane.GetChild("Btn_ToNext").asButton;
        toNextButton.onClick.Add(()=> 
        {
            killNumber.text = 0.ToString();
            wolfKillNumber.text = 0.ToString();
            AfterAction(UIPanelType.ProphetPanel);
        });

    }


    //任务链的传递
    public override void HandleGameAction(UIPanelType currentGamePanelType)
    {
        if (currentGamePanelType==UIPanelType.WitchPanel)
        {
            ToCurrentPanel();
            if (messageManager.canSave||messageManager.canKill)
            {
                if (!messageManager.canSave)
                {
                    saveButton.grayed = true;
                    saveButton.touchable = false;
                    wolfKillNumber.text = 0.ToString();
                }
                else
                {
                    wolfKillNumber.text = messageManager.wolfKillNumber.ToString();
                }

                if (!messageManager.canKill)
                {
                    killButton.grayed = true;
                    killButton.touchable = false;
                }
            }
            else if (!messageManager.canSave&&!messageManager.canKill)
            {
                saveButton.grayed = true;
                saveButton.touchable = false;
                killButton.grayed = true;
                killButton.touchable = false;
            }
        }
        else
        {
            if (nextPanel!=null)
            {
                nextPanel.HandleGameAction(currentGamePanelType);
            }
        }
    }
}
