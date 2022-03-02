using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UIMananger
{
    public bool isGameUIManager;
    public Dictionary<UIPanelType, BasePanel> UIPanelDict;

    public UIMananger()
    {
        UIPanelDict = new Dictionary<UIPanelType, BasePanel>();
    }

    public void ClearDict()
    {
        foreach (var item in UIPanelDict)
        {
            item.Value.Dispose();
        }
        UIPanelDict.Clear();
    }

    public void GameUIManager()
    {
        isGameUIManager = true;
        if (UIPanelDict.Count!=0)
        {
            ClearDict();
        }
        GameBasePanel dayNightPanel = new DayNightPanel("Panel_DayAndNight",UIPanelType.DayNightPanel,this);
        GameBasePanel wolfPanel = new WolfPanel("Panel_Wolf", UIPanelType.WolfPanel, this);
        GameBasePanel defenderPanel = new GuardPanel("Panel_Defender", UIPanelType.GuardPanel, this);
        GameBasePanel witchPanel = new WitchPanel("Panel_Witch", UIPanelType.WitchPanel, this);
        GameBasePanel prophetPanel = new ProphetPanel("Panel_Prophet", UIPanelType.ProphetPanel, this);
        GameBasePanel hunterPanel = new HunterPanel("Panel_Hunter", UIPanelType.HunterPanel, this);

        //环式责任链条
        wolfPanel.SetNextPanel(witchPanel).SetNextPanel(prophetPanel)
            .SetNextPanel(hunterPanel).SetNextPanel(defenderPanel)
            .SetNextPanel(dayNightPanel).SetNextPanel(wolfPanel);

        UIPanelDict.Add(UIPanelType.DayNightPanel, dayNightPanel);
        UIPanelDict.Add(UIPanelType.WolfPanel, wolfPanel);
        UIPanelDict.Add(UIPanelType.GuardPanel, defenderPanel);
        UIPanelDict.Add(UIPanelType.WitchPanel, witchPanel);
        UIPanelDict.Add(UIPanelType.ProphetPanel, prophetPanel);
        UIPanelDict.Add(UIPanelType.HunterPanel, hunterPanel);

        UIPanelDict[UIPanelType.WolfPanel].Show();
        GameBasePanel firstPanel = UIPanelDict[UIPanelType.WolfPanel] as GameBasePanel;
        firstPanel.EnterPanel();
        firstPanel.HandleGameAction(UIPanelType.WolfPanel);
    }

    public void MainUIManager()
    {
        isGameUIManager = false;
        if (UIPanelDict.Count!=0)
        {
            ClearDict();
        }
        UIPanelDict.Add(UIPanelType.MainPanel,new MainPanel("Panel_Main",UIPanelType.MainPanel,this));
        UIPanelDict.Add(UIPanelType.GamePanel, new GamePanel("Panel_Game", UIPanelType.GamePanel, this));
        UIPanelDict.Add(UIPanelType.HelpPanel, new HelpPanel("Panel_Help", UIPanelType.HelpPanel, this));
        UIPanelDict.Add(UIPanelType.SetPanel, new SetPanel("Panel_Set", UIPanelType.SetPanel, this));
        UIPanelDict[UIPanelType.MainPanel].Show();
    }

}
