using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using FairyGUI;
using DG.Tweening;

public class ProphetPanel : GameBasePanel
{
    //定义成员变量
    private GGroup cardButtons;
    private GComponent crystalBall;
    private GButton toNextButton;

    public ProphetPanel(string packageName, UIPanelType uiPanelType, UIMananger uiManager) : base(packageName, uiPanelType, uiManager)
    {
    }

    //初始化
    protected override void OnInitPanel()
    {
        base.OnInitPanel();
        //特性内内容
        cardButtons = contentPane.GetChild("Group_Cards").asGroup;
        crystalBall = contentPane.GetChild("Crystal").asCom;
        certainButton.onClick.Add(() => { AfterAction(UIPanelType.HunterPanel); });
        toNextButton = contentPane.GetChild("Btn_ToNext").asButton;
        toNextButton.onClick.Add(() => { AfterAction(UIPanelType.HunterPanel); });
        for (int i = 0; i < contentPane.numChildren; i++)
        {
            if (contentPane.GetChildAt(i).group==cardButtons)
            {
                GButton gButton = contentPane.GetChildAt(i).asButton;
                Vector2 gButtonPos = gButton.xy;//拿到了初始位置的坐标
                gButton.draggable = true;
                Controller IDcontroller = gButton.GetController("c1");
                gButton.onDragEnd.Add(() => 
                {
                    
                    if (GRoot.inst.touchTarget.name== "Crystal")
                    {
                        //查验身份
                        controller.selectedIndex = 2;
                        messageController.selectedIndex = 2;
                        for (int j = 0; j <messageManager.wolves.Length; j++)
                        {
                            if (System.Convert.ToInt32(gButton.title) ==messageManager.wolves[j])
                            {
                                IDcontroller.selectedIndex = 2;
                            }
                        }
                        if (IDcontroller.selectedIndex!=2)
                        {
                            IDcontroller.selectedIndex = 1;
                        }
                        DOTween.To(() => gButton.xy, x => gButton.xy = x, gButtonPos, 1);
                    }
                    else
                    {
                        //返回原处
                        DOTween.To(() => gButton.xy, x => gButton.xy = x, gButtonPos, 1);
                    }
                });
            }
        }
    }

    //任务链的传递
    public override void HandleGameAction(UIPanelType currentGamePanelType)
    {
        if (currentGamePanelType==UIPanelType.ProphetPanel)
        {
            ToCurrentPanel();
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
