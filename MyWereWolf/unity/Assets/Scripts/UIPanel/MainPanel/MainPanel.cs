using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using FairyGUI;

public class MainPanel : BasePanel
{
    public MainPanel(string packageName, UIPanelType uiPanelType, UIMananger uiManager) : base(packageName, uiPanelType, uiManager)
    {
    }

    protected override void OnInitPanel()
    {
        transition = contentPane.GetTransition("WhiteMaskAnim");
        transition.Play();
        Transition t = panelMask.GetTransition("MaskShow");
        t.Play();
        contentPane.GetChild("Btn_StartGame").onClick.Add(()=> 
        {
            ToOtherPanel(UIPanelType.GamePanel);
            GameManager.Instance.audioSourceManager.ChangeBGM(1);
        });
        contentPane.GetChild("Btn_Help").onClick.Add(() => { ToOtherPanel(UIPanelType.HelpPanel); });
        contentPane.GetChild("Btn_Set").onClick.Add(() => { ToOtherPanel(UIPanelType.SetPanel); });
        contentPane.GetChild("Btn_ExitGame").onClick.Add(() => { Application.Quit(); });
    }
}
