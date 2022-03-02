using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using FairyGUI;

public class SetPanel : BasePanel
{

    private GSlider gSlider;
    private GComboBox gComboBox;

    public SetPanel(string packageName, UIPanelType uiPanelType, UIMananger uiManager) : base(packageName, uiPanelType, uiManager)
    {
    }

    protected override void OnInitPanel()
    {
        contentPane.GetChild("Btn_Return").onClick.Add(() => { ToOtherPanel(UIPanelType.MainPanel); });
        gSlider = contentPane.GetChild("Sli_Sound").asSlider;
        gSlider.onChanged.Add(() => { GameManager.Instance.audioSourceManager.ChangeVolume((int)gSlider.value); });
        gComboBox = contentPane.GetChild("Combo_Language").asComboBox;
        gComboBox.onChanged.Add(SetLanguage);
    }

    private void SetLanguage()
    {
        string s = null;
        switch (System.Convert.ToInt32(gComboBox.value))
        {
            case 1:
                s = Resources.Load("Languages/Chinese").ToString();
                break;
            case 2:
                s = Resources.Load("Languages/English").ToString();
                break;
            case 3:
                s = Resources.Load("Languages/Japanese").ToString();
                break;
            default:
                break;
        }
        FairyGUI.Utils.XML xML = new FairyGUI.Utils.XML(s);
        GameManager.Instance.ChangeLanguage(xML);
    }

}
