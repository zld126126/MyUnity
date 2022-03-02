using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using FairyGUI;
using DG.Tweening;

public class GamePanel : BasePanel
{
    private Transition star;
    private Transition loadAnim;
    private GButton cardButton;
    private GObject cardFront;
    private GObject cardBack;
    private GComponent guideMessage;
    private Controller messageController;
    private GTextField tex_Number;
    private GTextField tex_ID;
    private bool toOpen = true;//是否显示卡牌正面

    //1预言家，2女巫，3猎人，4守卫，5-8狼,9-12村民

    public int[] RandomList = new int[12];
    private bool isTheSame;
    private int index;//玩家编号
    private int wolfIndex;//狼队索引
    private int villagersIndex;//村民索引


    public GamePanel(string packageName, UIPanelType uiPanelType, UIMananger uiManager) : base(packageName, uiPanelType, uiManager)
    {
    }

    protected override void OnInitPanel()
    {
        star = contentPane.GetTransition("t0");
        loadAnim = contentPane.GetTransition("t1");
        controller = contentPane.GetController("c1");
        cardButton = contentPane.GetChild("Btn_Card").asButton;
        cardButton.onClick.Add(RotateCard);
        cardFront = cardButton.GetChild("icon");
        cardFront.visible = false;
        cardBack = cardButton.GetChild("CardBG");
        guideMessage = contentPane.GetChild("GuideMessage").asCom;
        messageController = guideMessage.GetController("c1");
        tex_Number = guideMessage.GetChild("Tex_Number").asTextField;
        tex_ID = guideMessage.GetChild("Tex_ID").asTextField;
        ShuffleTheCard();
    }

    private void ShuffleTheCard()
    {
        int count = 0;
        while (count<12)
        {
            int r = Random.Range(1, 13);
            for (int i = 0; i < RandomList.Length; i++)
            {
                if (RandomList[i]==r)
                {
                    isTheSame = true;
                    break;
                }
            }
            if (!isTheSame)
            {
                RandomList[count] = r;
                count++;
            }
            isTheSame = false;
        }
    }

    private void RotateCard()
    {
        if (toOpen)
        {
            messageController.selectedIndex = 1;
            star.Play();
            switch (RandomList[index])
            {
                case 1:
                    tex_ID.text = "预言家";
                    cardButton.icon = "ui://Res_Main/ID2";
                    GameManager.Instance.messageManager.prophet = index + 1;
                    break;
                case 2:
                    tex_ID.text = "女巫";
                    cardButton.icon = "ui://Res_Main/ID3";
                    GameManager.Instance.messageManager.witch = index + 1;
                    break;
                case 3:
                    tex_ID.text = "猎人";
                    cardButton.icon = "ui://Res_Main/ID4";
                    GameManager.Instance.messageManager.hunter = index + 1;
                    break;
                case 4:
                    tex_ID.text = "守卫";
                    cardButton.icon = "ui://Res_Main/ID5";
                    GameManager.Instance.messageManager.defender = index + 1;
                    break;
                default:
                    if (RandomList[index]>=5&&RandomList[index]<=8)
                    {
                        tex_ID.text = "狼人";
                        cardButton.icon = "ui://Res_Main/ID1";
                        GameManager.Instance.messageManager.wolves[wolfIndex]= index + 1;
                        wolfIndex++;
                    }
                    else
                    {
                        tex_ID.text = "村民";
                        cardButton.icon = "ui://Res_Main/ID6";
                        GameManager.Instance.messageManager.villagers[villagersIndex] = index + 1;
                        villagersIndex++;
                    }
                    break;
            }
            index++;
        }
        else
        {
            tex_Number.text = (index + 1).ToString();
            messageController.selectedIndex = 0;
            if (index==12)
            {
                controller.selectedIndex = 1;
                messageController.selectedIndex = 2;
                loadAnim.Play(-1,0,()=>{ });
                GameManager.Instance.ToGame();
            }
        }

        Turn();

    }

    private void Turn()
    {
        if (DOTween.IsTweening(cardButton))
        {
            return;
        }
        toOpen = !toOpen;
        DOTween.To(() => 0, x => 
        {
            cardButton.touchable = false;
            if (toOpen)
            {
                //背面是从0-180，正面180-0
                cardBack.rotationY= x;
                cardFront.rotationY = -180 + x;

                if (x>90)
                {
                    cardBack.visible = true;
                    cardFront.visible = false;
                }

                if (x==180)
                {
                    cardButton.touchable = true;
                }
            }
            else
            {
                cardBack.rotationY = -180 + x;
                cardFront.rotationY = x;
                if (x>90)
                {
                    cardFront.visible = true;
                    cardBack.visible = false;
                }

                if (x == 180)
                {
                    cardButton.touchable = true;
                }
            }
        }, 180, 0.5f).SetTarget(cardButton).SetEase(Ease.OutQuad);
    }
}
