using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HunterPanel : GameBasePanel {

    private bool firstTimeInThisPanel = true;

    public HunterPanel(string packageName, UIPanelType uiPanelType, UIMananger uiManager) : base(packageName, uiPanelType, uiManager)
    {
    }

    protected override void OnInitPanel()
    {
        base.OnInitPanel();
        certainButton.onClick.Add(() => { AfterAction(UIPanelType.GuardPanel); });
    }

    public override void HandleGameAction(UIPanelType currentGamePanelType)
    {
        if (currentGamePanelType==UIPanelType.HunterPanel)
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

        openEye.visible = true;
        closeEye.visible = false;
        openEye.playing = true;
        openEye.SetPlaySettings(1, 16, 1, 0);
        if (firstTimeInThisPanel)
        {
            openEye.onPlayEnd.Add(() =>
            {
                if (messageManager.canShoot)
                {
                    controller.selectedIndex = 1;
                    messageController.selectedIndex = 1;
                }
                else
                {
                    controller.selectedIndex = 2;
                    messageController.selectedIndex = 2;
                }
                openEye.visible = false;
            });
            firstTimeInThisPanel = false;
        }
    }
}
