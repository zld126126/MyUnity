using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using FairyGUI;

public class DayNightPanel : GameBasePanel
{
    private GButton returnMainButton;
    private GButton toNightButton;
    private GButton judgeGameButton;
    private GTextField dieNumberOne;
    private GTextField dieNumberTwo;
    private GGroup numberButtons;
    private MessageManager.GameJudgementState currentGameJudgementState = MessageManager.GameJudgementState.GoOn;
    private bool firstTimeInThisPanel = true;

    public DayNightPanel(string packageName, UIPanelType uiPanelType, UIMananger uiManager) : base(packageName, uiPanelType, uiManager)
    {
    }

    protected override void OnInitPanel()
    {
        base.OnInitPanel();
        transition = contentPane.GetTransition("ToMain");
        dieNumberOne = guideMessage.GetChild("Tex_DyingNumberOne").asTextField;
        dieNumberTwo= guideMessage.GetChild("Tex_DyingNumberTwo").asTextField;
        returnMainButton = contentPane.GetChild("Btn_Return").asButton;
        toNightButton = contentPane.GetChild("Btn_ToNight").asButton;
        judgeGameButton = contentPane.GetChild("Btn_JudgeGame").asButton;

        judgeGameButton.onClick.Add(() => 
        {
            controller.selectedIndex = 5;
            messageController.selectedIndex = 5;
            JudgeGameAndRun();
        });

        returnMainButton.onClick.Add(() => 
        {
            messageManager.InitMessage();
            GameManager.Instance.ToMain();
            transition.Play();
        });
        numberButtons = contentPane.GetChild("Group_Btns").asGroup;
        for (int i = 0; i < contentPane.numChildren; i++)
        {
            if (contentPane.GetChildAt(i).group==numberButtons)
            {
                GButton gButton = contentPane.GetChildAt(i).asButton;
                gButton.onClick.Add(() => 
                {
                    gButton.grayed = true;
                    gButton.touchable = false;
                    messageManager.deadPlayerNum.Add(System.Convert.ToInt32(gButton.title));
                });
            }
        }

        toNightButton.onClick.Add(() => 
        {
            controller.selectedIndex = 8;
            AfterAction(UIPanelType.WolfPanel);
        });
    }

    public override void HandleGameAction(UIPanelType currentGamePanelType)
    {
        if (currentGamePanelType==UIPanelType.DayNightPanel)
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

    public override void ToCurrentPanel()
    {
        controller.selectedIndex = 0;
        messageController.selectedIndex = 0;
        Transition ToDay = guideMessage.GetTransition("t0");
        ToDay.Play(() => { CarryAction(); });
    }

    private void CarryAction()
    {
        MessageManager.DieType dieType = messageManager.JudgementOfDeath();
        switch (dieType)
        {
            case MessageManager.DieType.Zero:
                controller.selectedIndex = 1;
                messageController.selectedIndex = 1;
                break;
            case MessageManager.DieType.One:
                controller.selectedIndex = 2;
                messageController.selectedIndex = 2;
                dieNumberOne.text = messageManager.lastDieNumberOne.ToString();
                messageManager.deadPlayerNum.Add(messageManager.lastDieNumberOne);
                break;
            case MessageManager.DieType.Two:
                controller.selectedIndex = 3;
                messageController.selectedIndex = 3;
                dieNumberOne.text = messageManager.lastDieNumberOne.ToString();
                messageManager.deadPlayerNum.Add(messageManager.lastDieNumberOne);
                dieNumberTwo.text = messageManager.lastDieNumberTwo.ToString();
                messageManager.deadPlayerNum.Add(messageManager.lastDieNumberTwo);
                break;
            default:
                break;
        }

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

        Transition textTransition = guideMessage.GetTransition("t1");
        textTransition.Play(() => 
        {
            controller.selectedIndex = 4;
            messageController.selectedIndex = 4;
            JudgeGameAndRun();
            messageManager.InitAction();
        });
    }

    private void JudgeGameAndRun()
    {
        currentGameJudgementState = messageManager.GameJudgement();
        switch (currentGameJudgementState)
        {
            case MessageManager.GameJudgementState.VillagerWin:
                controller.selectedIndex = 6;
                messageController.selectedIndex = 6;
                break;
            case MessageManager.GameJudgementState.WolfWin:
                controller.selectedIndex = 7;
                messageController.selectedIndex = 7;
                break;
            case MessageManager.GameJudgementState.GoOn:
                break;
            default:
                break;
        }

    }
}
