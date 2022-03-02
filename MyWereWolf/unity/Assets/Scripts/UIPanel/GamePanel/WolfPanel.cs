using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using FairyGUI;

public class WolfPanel : GameBasePanel
{
    //狼人选择击杀玩家的文本
    private GTextField killNumber;
    private GGroup numberButtons;
    private Transition killTransition;



    public WolfPanel(string packageName, UIPanelType uiPanelType, UIMananger uiManager) : base(packageName, uiPanelType, uiManager)
    {
    }

    protected override void OnInitPanel()
    {
        base.OnInitPanel();
        killNumber = contentPane.GetChild("Tex_KillNumber").asTextField;
        numberButtons = contentPane.GetChild("Group_KillNumber").asGroup;
        transition = contentPane.GetTransition("t0");
        killTransition = contentPane.GetTransition("t1");
        for (int i = 0; i < contentPane.numChildren; i++)
        {
            if (contentPane.GetChildAt(i).group==numberButtons)
            {
                GButton gButton = contentPane.GetChildAt(i).asButton;
                gButton.onClick.Add(() => 
                {
                    killNumber.text = gButton.title.ToString();
                    messageManager.wolfKillNumber =System.Convert.ToInt32(gButton.title);
                });
                    
            }
        }

        certainButton.onClick.Add(()=> 
        {
            controller.selectedIndex = 2;
            messageController.selectedIndex = 2;
            transition.Stop();
            killTransition.Play(()=> 
            {
                killNumber.text = 0.ToString();
                AfterAction(UIPanelType.WitchPanel);
            });
        });
    }

    public override void HandleGameAction(UIPanelType currentGamePanelType)
    {
        if (currentGamePanelType==UIPanelType.WolfPanel)
        {
            ToCurrentPanel();
            transition.Play(-1, 0, () => { });
            for (int i = 0; i < contentPane.numChildren; i++)
            {
                for (int j = 0; j < messageManager.deadPlayerNum.Count; j++)
                {
                    if (contentPane.GetChildAt(i).group==numberButtons)
                    {
                        GButton gButton = contentPane.GetChildAt(i).asButton;
                        if (gButton.title==messageManager.deadPlayerNum[j].ToString())
                        {
                            gButton.grayed = true;
                            gButton.touchable = false;
                        }
                    }
                }
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
