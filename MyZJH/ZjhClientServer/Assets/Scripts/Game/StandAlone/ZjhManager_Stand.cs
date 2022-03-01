using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class ZjhManager_Stand : MonoBehaviour
{
    /// <summary>
    /// 发牌动画持续时间
    /// </summary>
    public float m_DealCardDurationTime = 0.3f;

    private Text txt_BottomStakes;
    private Text txt_TopStakes;
    private Button btn_Back;
    private LeftManager_Stand m_LeftManager;
    private RightManager_Stand m_RightManager;
    private SelfManager_Stand m_SelfManager;
    private AudioSource m_AudioSource;

    /// <summary>
    /// 左边玩家是否弃牌
    /// </summary>
    public bool LeftIsGiveUp { get { return m_LeftManager.m_IsGiveUpCard; } }
    /// <summary>
    /// 右边玩家是否弃牌
    /// </summary>
    public bool RightIsGiveUp { get { return m_RightManager.m_IsGiveUpCard; } }

    /// <summary>
    /// 当前发牌的游标
    /// </summary>
    private int m_CurrentDealCardIndex = 0;
    /// <summary>
    /// 当前下注的游标
    /// </summary>
    public int m_CurrentStakesIndex = 0;
    /// <summary>
    /// 牌库
    /// </summary>
    private List<Card> m_CardList = new List<Card>();
    /// <summary>
    /// 发牌的下标
    /// </summary>
    private int m_DealCardIndex = 0;
    /// <summary>
    /// 是否开始下注
    /// </summary>
    private bool m_IsStartStakes = false;
    /// <summary>
    /// 下一位玩家是否可以下注
    /// </summary>
    private bool m_IsNextPlayerCanStakes = true;
    /// <summary>
    /// 设置下一位玩家可以下注
    /// </summary>
    public void SetNextPlayerStakes()
    {
        m_IsNextPlayerCanStakes = true;
    }
    /// <summary>
    /// 上一位玩家下注的数量
    /// </summary>
    private int m_LastPlayerStakesCount = 0;

    private void Awake()
    {
        Init();
    }
    private void Init()
    {
        m_AudioSource = GetComponent<AudioSource>();
        m_SelfManager = GetComponentInChildren<SelfManager_Stand>();
        m_LeftManager = GetComponentInChildren<LeftManager_Stand>();
        m_RightManager = GetComponentInChildren<RightManager_Stand>();
        txt_BottomStakes = transform.Find("Main/txt_BottomStakes").GetComponent<Text>();
        txt_TopStakes = transform.Find("Main/txt_TopStakes").GetComponent<Text>();
        btn_Back = transform.Find("Main/btn_Back").GetComponent<Button>();
        btn_Back.onClick.AddListener(() =>
        {
            SceneManager.LoadScene("2.Main");
        });
        txt_BottomStakes.text = Models.GameModel.BottomStakes.ToString();
        txt_TopStakes.text = Models.GameModel.TopStakes.ToString();
        m_LastPlayerStakesCount = Models.GameModel.BottomStakes;
    }
    private void FixedUpdate()
    {
        if (m_IsStartStakes)
        {
            if (m_IsNextPlayerCanStakes)
            {
                //自身玩家下注
                if (m_CurrentStakesIndex % 3 == 0)
                {
                    if (m_SelfManager.m_IsGiveUpCard == false)
                    {
                        m_SelfManager.StartStakes();
                        m_IsNextPlayerCanStakes = false;
                    }
                }
                //左边玩家下注
                if (m_CurrentStakesIndex % 3 == 1)
                {
                    if (m_LeftManager.m_IsGiveUpCard == false)
                    {
                        m_LeftManager.StartStakes();
                        m_IsNextPlayerCanStakes = false;
                    }
                }
                //右边玩家下注
                if (m_CurrentStakesIndex % 3 == 2)
                {
                    if (m_RightManager.m_IsGiveUpCard == false)
                    {
                        m_RightManager.StartStakes();
                        m_IsNextPlayerCanStakes = false;
                    }
                }
                m_CurrentStakesIndex++;
            }
        }
    }
    /// <summary>
    /// 判断自身玩家是否胜利
    /// </summary>
    /// <returns></returns>
    public bool IsSelfWin()
    {
        if (m_LeftManager.m_IsGiveUpCard && m_RightManager.m_IsGiveUpCard)
        {
            return true;
        }
        return false;
    }
    /// <summary>
    /// 判断左边玩家是否胜利
    /// </summary>
    /// <returns></returns>
    public bool IsLeftWin()
    {
        if (m_SelfManager.m_IsGiveUpCard && m_RightManager.m_IsGiveUpCard)
        {
            return true;
        }
        return false;
    }
    /// <summary>
    /// 判断右边玩家是否胜利
    /// </summary>
    /// <returns></returns>
    public bool IsRightWin()
    {
        if (m_LeftManager.m_IsGiveUpCard && m_SelfManager.m_IsGiveUpCard)
        {
            return true;
        }
        return false;
    }
    /// <summary>
    /// 自身玩家胜利
    /// </summary>
    public void SelfWin()
    {
        EventCenter.Broadcast(EventDefine.GameOver, -m_LeftManager.m_StakesSum,
            m_SelfManager.m_StakesSum, -m_RightManager.m_StakesSum);
    }
    /// <summary>
    /// 左边玩家胜利
    /// </summary>
    public void LeftWin()
    {
        EventCenter.Broadcast(EventDefine.GameOver, m_LeftManager.m_StakesSum,
            -m_SelfManager.m_StakesSum, -m_RightManager.m_StakesSum);
    }
    /// <summary>
    /// 右边玩家胜利
    /// </summary>
    public void RightWin()
    {
        EventCenter.Broadcast(EventDefine.GameOver, -m_LeftManager.m_StakesSum,
            -m_SelfManager.m_StakesSum, m_RightManager.m_StakesSum);
    }
    /// <summary>
    /// 右边玩家比牌
    /// </summary>
    public void RightPlayerCompare()
    {
        if (m_SelfManager.m_IsGiveUpCard)
        {
            //和左边玩家比牌
            EventCenter.Broadcast(EventDefine.VSAI, (BaseManager_Stand)m_RightManager, (BaseManager_Stand)m_LeftManager);
        }
        else
        {
            //和Self玩家比牌
            EventCenter.Broadcast(EventDefine.VSWithSelf, (BaseManager_Stand)m_RightManager, (BaseManager_Stand)m_SelfManager, "右边玩家", "我");
        }
    }
    /// <summary>
    /// 左边玩家比牌
    /// </summary>
    public void LeftPlayerCompare()
    {
        if (m_SelfManager.m_IsGiveUpCard)
        {
            //和右边玩家比牌
            EventCenter.Broadcast(EventDefine.VSAI, (BaseManager_Stand)m_LeftManager, (BaseManager_Stand)m_RightManager);
        }
        else
        {
            //和Self玩家比牌
            EventCenter.Broadcast(EventDefine.VSWithSelf, (BaseManager_Stand)m_LeftManager, (BaseManager_Stand)m_SelfManager, "左边玩家", "我");
        }
    }
    /// <summary>
    /// 自身与左边玩家比牌
    /// </summary>
    public void SelfCompareLeft()
    {
        EventCenter.Broadcast(EventDefine.VSWithSelf, (BaseManager_Stand)m_SelfManager, (BaseManager_Stand)m_LeftManager, "我", "左边玩家");
    }
    /// <summary>
    /// 自身与右边玩家比牌
    /// </summary>
    public void SelfCompareRight()
    {
        EventCenter.Broadcast(EventDefine.VSWithSelf, (BaseManager_Stand)m_SelfManager, (BaseManager_Stand)m_RightManager, "我", "右边玩家");
    }
    /// <summary>
    /// 下注
    /// </summary>
    public int Stakes(int count)
    {
        m_LastPlayerStakesCount += count;
        if (m_LastPlayerStakesCount > Models.GameModel.TopStakes)
        {
            m_LastPlayerStakesCount = Models.GameModel.TopStakes;
        }
        return m_LastPlayerStakesCount;
    }
    /// <summary>
    /// 选择庄家
    /// </summary>
    public void ChooseBanker()
    {
        m_LeftManager.StartChooseBanker();
        m_RightManager.StartChooseBanker();

        int ran = Random.Range(0, 3);
        switch (ran)
        {
            case 0://自身成为庄家
                m_SelfManager.BecomeBanker();
                m_CurrentDealCardIndex = 0;
                m_CurrentStakesIndex = 1;
                break;
            case 1://左边成为庄家
                m_LeftManager.BecomeBanker();
                m_CurrentDealCardIndex = 1;
                m_CurrentStakesIndex = 2;
                break;
            case 2://右边成为庄家
                m_RightManager.BecomeBanker();
                m_CurrentDealCardIndex = 2;
                m_CurrentStakesIndex = 0;
                break;
            default:
                break;
        }

        EventCenter.Broadcast(EventDefine.Hint, "开始发牌");
        //发牌TODO
        StartCoroutine(DealCard());
    }
    private IEnumerator DealCard()
    {
        //1.初始化牌
        if (m_CardList.Count == 0 || m_CardList == null || m_CardList.Count < 9)
        {
            InitCard();
            //2.洗牌
            ClearCard();
        }

        //3.发牌
        for (int i = 0; i < 9; i++)
        {
            m_AudioSource.Play();
            if (m_CurrentDealCardIndex % 3 == 0)
            {
                //自身发牌
                m_SelfManager.DealCard(m_CardList[m_DealCardIndex], m_DealCardDurationTime, new Vector3(0, 328, 0));
                m_CardList.RemoveAt(m_DealCardIndex);
            }
            else if (m_CurrentDealCardIndex % 3 == 1)
            {
                //左边发牌
                m_LeftManager.DealCard(m_CardList[m_DealCardIndex], m_DealCardDurationTime, new Vector3(566.6f, -40.89f, 0));
                m_CardList.RemoveAt(m_DealCardIndex);
            }
            else if (m_CurrentDealCardIndex % 3 == 2)
            {
                //右边发牌
                m_RightManager.DealCard(m_CardList[m_DealCardIndex], m_DealCardDurationTime, new Vector3(-565.4f, -40.89f, 0));
                m_CardList.RemoveAt(m_DealCardIndex);
            }
            yield return new WaitForSeconds(m_DealCardDurationTime);
            m_DealCardIndex++;
            m_CurrentDealCardIndex++;
        }

        //发牌结束
        m_RightManager.DealCardFinished();
        m_SelfManager.DealCardFinished();
        m_LeftManager.DealCardFinished();
        m_IsStartStakes = true;
    }
    /// <summary>
    /// 初始化牌
    /// </summary>
    private void InitCard()
    {
        for (int weight = 2; weight <= 14; weight++)
        {
            for (int color = 0; color <= 3; color++)
            {
                Card card = new Card(weight, color);
                m_CardList.Add(card);
            }
        }
    }
    /// <summary>
    /// 洗牌
    /// </summary>
    private void ClearCard()
    {
        for (int i = 0; i < m_CardList.Count; i++)
        {
            int ran = Random.Range(0, m_CardList.Count);
            Card temp = m_CardList[i];
            m_CardList[i] = m_CardList[ran];
            m_CardList[ran] = temp;
        }
    }
}
