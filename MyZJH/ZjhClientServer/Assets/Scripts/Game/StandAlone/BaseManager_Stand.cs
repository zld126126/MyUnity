using DG.Tweening;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public abstract class BaseManager_Stand : MonoBehaviour
{
    public GameObject go_CardPre;

    protected Image img_Banker;
    protected Transform CardPoints;
    protected GameObject go_CountDown;
    protected Text txt_CountDown;
    protected StakesCountHint m_StakesCountHint;
    protected Text txt_StakesSum;
    protected ZjhManager_Stand m_ZjhManager;
    protected Image img_HeadIcon;

    /// <summary>
    /// 自身的三张牌
    /// </summary>
    public List<Card> m_CardList = new List<Card>();
    /// <summary>
    /// 牌型
    /// </summary>
    public CardType m_CardType;
    /// <summary>
    /// 生成的三张牌的集合
    /// </summary>
    protected List<GameObject> go_SpawnCardList = new List<GameObject>();
    /// <summary>
    /// 牌的到达位置
    /// </summary>
    protected float m_CardPointX = -40f;
    /// <summary>
    /// 是否开始下注
    /// </summary>
    protected bool m_IsStartStakes = false;
    /// <summary>
    /// 倒计时
    /// </summary>
    protected float m_Time = 60f;
    /// <summary>
    /// 计时器
    /// </summary>
    protected float m_Timer = 0.0f;
    /// <summary>
    /// 总下注数
    /// </summary>
    public int m_StakesSum = 0;
    /// <summary>
    /// 是否弃牌
    /// </summary>
    public bool m_IsGiveUpCard = false;

    /// <summary>
    /// 失败的抽象方法
    /// </summary>
    public abstract void ComapreLose();
    /// <summary>
    /// 胜利的抽象方法
    /// </summary>
    public abstract void CompareWin();
    /// <summary>
    /// 成为庄家
    /// </summary>
    public void BecomeBanker()
    {
        img_Banker.gameObject.SetActive(true);
    }
    /// <summary>
    /// 开始下注
    /// </summary>
    public virtual void StartStakes()
    {
        m_IsStartStakes = true;
        go_CountDown.SetActive(true);
        txt_CountDown.text = "60";
        m_Time = 60;
    }
    protected virtual void StakesAfter(int count, string str)
    {
        m_StakesCountHint.Show(count + str);
        m_StakesSum += count;
        txt_StakesSum.text = m_StakesSum.ToString();
    }
    /// <summary>
    /// 发牌
    /// </summary>
    public void DealCard(Card card, float duration, Vector3 initPos)
    {
        m_CardList.Add(card);
        GameObject go = Instantiate(go_CardPre, CardPoints);
        go.GetComponent<RectTransform>().localPosition = initPos;
        go.GetComponent<RectTransform>().DOLocalMove(new Vector3(m_CardPointX, 0, 0), duration);

        go_SpawnCardList.Add(go);
        m_CardPointX += 40;
    }
    /// <summary>
    /// 手牌排序 从大到小
    /// </summary>
    protected void SortCards()
    {
        for (int i = 0; i < m_CardList.Count - 1; i++)
        {
            for (int j = 0; j < m_CardList.Count - 1 - i; j++)
            {
                if (m_CardList[j].Weight < m_CardList[j + 1].Weight)
                {
                    Card temp = m_CardList[j];
                    m_CardList[j] = m_CardList[j + 1];
                    m_CardList[j + 1] = temp;
                }
            }
        }
    }
    /// <summary>
    /// 获取牌型
    /// </summary>
    protected void GetCardType()
    {
        //532
        if (m_CardList[0].Weight == 5 && m_CardList[1].Weight == 3 && m_CardList[2].Weight == 2)
        {
            m_CardType = CardType.Max;
        }
        //666
        else if (m_CardList[0].Weight == m_CardList[1].Weight && m_CardList[0].Weight == m_CardList[2].Weight)
        {
            m_CardType = CardType.Baozi;
        }
        //765 颜色也一样
        else if (m_CardList[0].Color == m_CardList[1].Color && m_CardList[0].Color == m_CardList[2].Color &&
            m_CardList[0].Weight == m_CardList[1].Weight + 1 && m_CardList[0].Weight == m_CardList[2].Weight + 2)
        {
            m_CardType = CardType.Shunjin;
        }
        //颜色一样
        else if (m_CardList[0].Color == m_CardList[1].Color && m_CardList[0].Color == m_CardList[2].Color)
        {
            m_CardType = CardType.Jinhua;
        }
        //765
        else if (m_CardList[0].Weight == m_CardList[1].Weight + 1 && m_CardList[0].Weight == m_CardList[2].Weight + 2)
        {
            m_CardType = CardType.Shunzi;
        }
        //665 688
        else if (m_CardList[0].Weight == m_CardList[1].Weight || m_CardList[1].Weight == m_CardList[2].Weight)
        {
            m_CardType = CardType.Duizi;
        }
        else
        {
            m_CardType = CardType.Min;
        }
    }
}
