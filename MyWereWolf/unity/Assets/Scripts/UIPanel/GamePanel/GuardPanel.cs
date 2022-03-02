using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using FairyGUI;

public class GuardPanel : GameBasePanel
{
    private GTextField guardNumber;

    private int lastGuardNumber=-1;

    public GuardPanel(string packageName, UIPanelType uiPanelType, UIMananger uiManager) : base(packageName, uiPanelType, uiManager)
    {
    }


    protected override void OnInitPanel()
    {
        base.OnInitPanel();
        guardNumber = contentPane.GetChild("Tex_GuardNumber").asTextField;
        certainButton.onClick.Add(()=> 
        {
            int num = 0;
            if (guardNumber.text!=null)
            {
                num = System.Convert.ToInt32(guardNumber.text);
            }

            if (num<0||num>12||num==lastGuardNumber)
            {
                guardNumber.text = 0.ToString();
                return;
            }

            for (int i = 0; i < messageManager.deadPlayerNum.Count; i++)
            {
                if (messageManager.deadPlayerNum[i]==num)
                {
                    guardNumber.text = 0.ToString();
                    return;
                }
            }
           
         
            if (num!=0&&num!=lastGuardNumber)
            {
                messageManager.defendNumber = num;
                lastGuardNumber = num;
            }
           

            guardNumber.text = 0.ToString();
            AfterAction(UIPanelType.DayNightPanel);
        });

        UnityEngine.Object prefab = Resources.Load("DefendEffect/Effect");
        GameObject effect = (GameObject)GameObject.Instantiate(prefab);
        GoWrapper gw = new GoWrapper(effect);
        contentPane.GetChild("DefendEffect").asGraph.SetNativeObject(gw);
    }

    public override void HandleGameAction(UIPanelType currentGamePanelType)
    {
        if (currentGamePanelType==UIPanelType.GuardPanel)
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
