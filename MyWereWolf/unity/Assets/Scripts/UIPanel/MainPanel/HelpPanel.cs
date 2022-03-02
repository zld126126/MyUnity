using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using FairyGUI;

public class HelpPanel : BasePanel
{
    private GList list;
    private GTextField idText;//身份显示文本
    private GTextField idInstruction;//身份说明文本
    private int currentCardID = 3;


    public HelpPanel(string packageName, UIPanelType uiPanelType, UIMananger uiManager) : base(packageName, uiPanelType, uiManager)
    {
    }

    protected override void OnInitPanel()
    {
        contentPane.GetChild("Btn_Return").onClick.Add(() => { ToOtherPanel(UIPanelType.MainPanel); });
        idText = contentPane.GetChild("Tex_ID").asTextField;
        idInstruction = contentPane.GetChild("Tex_Introduce").asTextField;
        list = contentPane.GetChild("CardList").asList;
        list.SetVirtualAndLoop();
        list.itemRenderer = RenderListItem;
        list.numItems = 7;
        list.scrollPane.onScroll.Add(DoSpecialEffect);
        DoSpecialEffect();
        ShowIDInformation(currentCardID);
    }

    private void DoSpecialEffect()
    {
        float listCenter = list.scrollPane.posX + list.viewWidth / 2;

        for (int i = 0; i < list.numChildren; i++)
        {
            GObject item = list.GetChildAt(i);
            float itemCenter = item.x + item .width / 2;
            float itemWidth = item.width;
            float distance =Mathf.Abs(listCenter - itemCenter);
            if (distance<itemWidth)
            {
                float distanceRange = 1 + (1 - distance / itemWidth) * 0.2f;
                item.SetScale(distanceRange, distanceRange);
            }
            else
            {
                item.SetScale(1, 1);
            }
        }
        ShowIDInformation((list.GetFirstChildInView()+3)%list.numItems);
    }


    private void RenderListItem(int index,GObject gObject)
    {
        GButton button = gObject.asButton;
        button.SetPivot(0.5f, 0.5f);
        button.icon = UIPackage.GetItemURL("Res_Main", "ID" + (index + 1));
    }

    //文本显示控制
    private void ShowIDInformation(int id)
    {
        switch (id)
        {
            case 1:idText.text = "狼人";
                idInstruction.text = "每晚可以杀死一名玩家，狼队互相认识";
                break;
            case 2:
                idText.text = "预言家";
                idInstruction.text = "每晚可以确认一名玩家的真实身份，只能验到狼跟非狼";
                break;
            case 3:
                idText.text = "女巫";
                idInstruction.text = "有两种药（解药跟毒药）。解药可以救人，毒药可以在天黑时毒死一人" +
                    "每种药只能使用一次，且同一晚不能使用两种药" +
                    "女巫解药使用前可以看到谁被指杀";
                break;
            case 4:
                idText.text = "猎人";
                idInstruction.text = "当他被狼人杀掉且夜晚没有被女巫毒杀或者被放逐投票出局，他可以选择一个活着的玩家一起死";
                break;
            case 5:
                idText.text = "守卫";
                idInstruction.text = "每天晚上可以守护一位玩家（包括自己），被守护玩家不能被狼人杀死，但可以被女巫毒死，守护" +
                    "是不可以连续两天守护同一个人，要隔一天才能守护";
                break;
            case 6:
                idText.text = "村民";
                idInstruction.text = "没有任何特殊功能";
                break;
            default:
                idText.text = "警长";
                idInstruction.text = "可以决定发言顺序并且有1.5票放逐投票劝";
                break;
        }
    }
}
