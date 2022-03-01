using DG.Tweening;
using Protocol.Code;
using Protocol.Dto;
using Protocol.Dto.Fight;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class SelfManager_Net : MonoBehaviour
{
    public GameObject go_CardPre;
    public AudioClip clip_Start;
    public AudioClip clip_GiveUp;

    protected Image img_Banker;
    protected Transform CardPoints;
    protected GameObject go_CountDown;
    protected Text txt_CountDown;
    protected StakesCountHint m_StakesCountHint;
    protected Text txt_StakesSum;
    protected Image img_HeadIcon;

    private GameObject go_BottomButton;
    private Text txt_UserName;
    private Text txt_CoinCount;

    private Button btn_Ready;
    private Button btn_UnReady;
    private Text txt_Hint;

    private Button btn_LookCard;
    private Button btn_FollowStakes;
    private Button btn_AddStakes;
    private Button btn_ComapreCard;
    private Button btn_GiveUp;
    private Toggle tog_2;
    private Toggle tog_5;
    private Toggle tog_10;
    private GameObject go_CompareBtns;
    private Button btn_CompareLeft;
    private Button btn_CompareRight;
    private int m_CardPointX = -40;
    /// <summary>
    /// 是否开始下注
    /// </summary>
    private bool m_IsStartStakes = false;
    private float m_Timer = 0f;
    private float m_Time = 60;
    /// <summary>
    /// 牌的集合
    /// </summary>
    private List<CardDto> m_CardList = new List<CardDto>();
    /// <summary>
    /// 生成的三张牌的物体集合
    /// </summary>
    private List<GameObject> go_SpawnCardList = new List<GameObject>();
    private PlayerDto m_PlayerDto;
    private ZjhManager_Net m_ZjhManager;
    private AudioSource m_Audio;

    private void Awake()
    {
        EventCenter.AddListener<int>(EventDefine.GiveUpCardBRO, GiveUpCardBRO);
        EventCenter.AddListener<StakesDto>(EventDefine.PutStakesBRO, PutStakesBRO);
        EventCenter.AddListener<int>(EventDefine.StartStakes, StartStakes);
        EventCenter.AddListener(EventDefine.SelfBanker, Banker);
        EventCenter.AddListener<PlayerDto>(EventDefine.SelfDealCard, DealCard);
        EventCenter.AddListener(EventDefine.StartGame, StartGame);
        Init();
    }
    private void OnDestroy()
    {
        EventCenter.RemoveListener<int>(EventDefine.GiveUpCardBRO, GiveUpCardBRO);
        EventCenter.RemoveListener<StakesDto>(EventDefine.PutStakesBRO, PutStakesBRO);
        EventCenter.RemoveListener<int>(EventDefine.StartStakes, StartStakes);
        EventCenter.RemoveListener(EventDefine.SelfBanker, Banker);
        EventCenter.RemoveListener<PlayerDto>(EventDefine.SelfDealCard, DealCard);
        EventCenter.RemoveListener(EventDefine.StartGame, StartGame);
    }
    private void Init()
    {
        m_Audio = GetComponent<AudioSource>();
        m_ZjhManager = GetComponentInParent<ZjhManager_Net>();
        btn_UnReady = transform.Find("btn_UnReady").GetComponent<Button>();
        btn_UnReady.onClick.AddListener(OnUnReadyButtonClick);

        go_CompareBtns = transform.Find("CompareBtns").gameObject;
        btn_CompareLeft = go_CompareBtns.transform.Find("btn_CompareLeft").GetComponent<Button>();
        btn_CompareLeft.onClick.AddListener(OnCompareLeftButtonClick);
        btn_CompareRight = go_CompareBtns.transform.Find("btn_CompareRight").GetComponent<Button>();
        btn_CompareRight.onClick.AddListener(OnCompareRightButtonClick);

        m_StakesCountHint = transform.Find("StakesCountHint").GetComponent<StakesCountHint>();
        go_BottomButton = transform.Find("BottomButton").gameObject;
        img_HeadIcon = transform.Find("img_HeadIcon").GetComponent<Image>();
        txt_UserName = transform.Find("txt_UserName").GetComponent<Text>();
        txt_CoinCount = transform.Find("Coin/txt_CoinCount").GetComponent<Text>();
        img_Banker = transform.Find("img_Banker").GetComponent<Image>();
        txt_StakesSum = transform.Find("StakesSum/txt_StakesSum").GetComponent<Text>();
        go_CountDown = transform.Find("CountDown").gameObject;
        txt_CountDown = transform.Find("CountDown/txt_CountDown").GetComponent<Text>();
        btn_Ready = transform.Find("btn_Ready").GetComponent<Button>();
        btn_Ready.onClick.AddListener(OnReadyButtonClick);
        txt_Hint = transform.Find("txt_Hint").GetComponent<Text>();
        CardPoints = transform.Find("CardPoints");

        btn_LookCard = go_BottomButton.transform.Find("btn_LookCard").GetComponent<Button>();
        btn_LookCard.onClick.AddListener(OnLookCardButtonClick);

        btn_FollowStakes = go_BottomButton.transform.Find("btn_FollowStakes").GetComponent<Button>();
        btn_FollowStakes.onClick.AddListener(OnFollowButtonClick);

        btn_AddStakes = go_BottomButton.transform.Find("btn_AddStakes").GetComponent<Button>();
        btn_AddStakes.onClick.AddListener(OnAddButtonClick);

        btn_ComapreCard = go_BottomButton.transform.Find("btn_ComapreCard").GetComponent<Button>();
        btn_ComapreCard.onClick.AddListener(OnCopareButtonClick);

        btn_GiveUp = go_BottomButton.transform.Find("btn_GiveUp").GetComponent<Button>();
        btn_GiveUp.onClick.AddListener(OnGiveUpCardButtonClick);

        tog_2 = go_BottomButton.transform.Find("tog_2").GetComponent<Toggle>();
        tog_5 = go_BottomButton.transform.Find("tog_5").GetComponent<Toggle>();
        tog_10 = go_BottomButton.transform.Find("tog_10").GetComponent<Toggle>();

        btn_LookCard.GetComponent<Image>().alphaHitTestMinimumThreshold = 0.5f;
        btn_FollowStakes.GetComponent<Image>().alphaHitTestMinimumThreshold = 0.5f;
        btn_AddStakes.GetComponent<Image>().alphaHitTestMinimumThreshold = 0.5f;
        btn_ComapreCard.GetComponent<Image>().alphaHitTestMinimumThreshold = 0.5f;
        btn_GiveUp.GetComponent<Image>().alphaHitTestMinimumThreshold = 0.5f;
        tog_2.GetComponent<Image>().alphaHitTestMinimumThreshold = 0.5f;
        tog_5.GetComponent<Image>().alphaHitTestMinimumThreshold = 0.5f;
        tog_10.GetComponent<Image>().alphaHitTestMinimumThreshold = 0.5f;

        go_BottomButton.SetActive(false);
        img_Banker.gameObject.SetActive(false);
        txt_Hint.gameObject.SetActive(false);
        go_CountDown.SetActive(false);
        go_CompareBtns.SetActive(false);
        btn_UnReady.gameObject.SetActive(false);

        txt_StakesSum.text = "0";
        if (Models.GameModel.userDto != null)
        {
            img_HeadIcon.sprite = ResourcesManager.GetSprite(Models.GameModel.userDto.IconName);
            txt_UserName.text = Models.GameModel.userDto.UserName;
            txt_CoinCount.text = Models.GameModel.userDto.CoinCount.ToString();
        }
    }
    private void FixedUpdate()
    {
        if (tog_2.isOn)
        {
            tog_2.GetComponent<Image>().color = Color.gray;
            tog_5.GetComponent<Image>().color = Color.white;
            tog_10.GetComponent<Image>().color = Color.white;
        }
        if (tog_5.isOn)
        {
            tog_5.GetComponent<Image>().color = Color.gray;
            tog_2.GetComponent<Image>().color = Color.white;
            tog_10.GetComponent<Image>().color = Color.white;
        }
        if (tog_10.isOn)
        {
            tog_10.GetComponent<Image>().color = Color.gray;
            tog_5.GetComponent<Image>().color = Color.white;
            tog_2.GetComponent<Image>().color = Color.white;
        }

        if (m_IsStartStakes)
        {
            if (m_Time <= 0)
            {
                m_IsStartStakes = false;
                m_Time = 60;
                m_Timer = 0;
                return;
            }
            m_Timer += Time.deltaTime;
            if (m_Timer >= 1)
            {
                m_Timer = 0;
                m_Time--;
                txt_CountDown.text = m_Time.ToString();
            }
        }
    }
    /// <summary>
    /// 有玩家弃牌的服务器广播
    /// </summary>
    /// <param name="giveUpUserId"></param>
    private void GiveUpCardBRO(int giveUpUserId)
    {
        if (giveUpUserId == Models.GameModel.userDto.UserId)
        {
            m_Audio.clip = clip_GiveUp;
            m_Audio.Play();
            go_BottomButton.SetActive(false);
            go_CountDown.SetActive(false);
            m_IsStartStakes = false;
            txt_Hint.text = "已弃牌";
            txt_Hint.gameObject.SetActive(true);
            go_CompareBtns.SetActive(false);

            foreach (var card in go_SpawnCardList)
            {
                Destroy(card);
            }
        }
    }
    /// <summary>
    /// 有玩家下注的服务器广播
    /// </summary>
    /// <param name="dto"></param>
    private void PutStakesBRO(StakesDto dto)
    {
        if (dto.userId == Models.GameModel.userDto.UserId)
        {
            txt_CoinCount.text = dto.remainCoin.ToString();
            if (dto.stakesType == StakesDto.StakesType.NoLook)
            {
                m_StakesCountHint.Show(dto.stakesCount + "不看");
                txt_StakesSum.text = dto.stakesSum.ToString();
            }
            else
            {
                m_StakesCountHint.Show(dto.stakesCount + "看看");
                txt_StakesSum.text = dto.stakesSum.ToString();
            }
        }
        go_CountDown.SetActive(false);
        SetBottomButtonInteractable(false);
        m_IsStartStakes = false;
        go_CompareBtns.SetActive(false);
    }
    /// <summary>
    /// 开始下注
    /// </summary>
    private void StartStakes(int userId)
    {
        if (userId == Models.GameModel.userDto.UserId)
        {
            m_Time = 60;
            go_CountDown.SetActive(true);
            txt_CountDown.text = "60";
            m_IsStartStakes = true;
            SetBottomButtonInteractable(true);
        }
        else
        {
            go_CountDown.SetActive(false);
            m_IsStartStakes = false;
            SetBottomButtonInteractable(false);
        }
    }
    /// <summary>
    /// 成为庄家
    /// </summary>
    private void Banker()
    {
        img_Banker.gameObject.SetActive(true);
    }
    /// <summary>
    /// 发牌
    /// </summary>
    private void DealCard(PlayerDto dto)
    {
        m_PlayerDto = dto;
        go_SpawnCardList.Clear();
        m_CardList = dto.cardList;
        foreach (var card in dto.cardList)
        {
            DealCard(0.3f, new Vector3(0, 328, 0));
        }
        DealCardFinished();
    }
    /// <summary>
    /// 发牌
    /// </summary>
    private void DealCard(float duration, Vector3 initPos)
    {
        GameObject go = Instantiate(go_CardPre, CardPoints);
        go.GetComponent<RectTransform>().localPosition = initPos;
        go.GetComponent<RectTransform>().DOLocalMove(new Vector3(m_CardPointX, 0, 0), duration);

        m_CardPointX += 40;
        go_SpawnCardList.Add(go);
    }
    /// <summary>
    /// 发牌完成后
    /// </summary>
    private void DealCardFinished()
    {
        go_BottomButton.SetActive(true);
        SetBottomButtonInteractable(false);
    }
    /// <summary>
    /// 设置底部按钮是否可以交互
    /// </summary>
    /// <param name="value"></param>
    private void SetBottomButtonInteractable(bool value)
    {
        btn_FollowStakes.interactable = value;
        btn_AddStakes.interactable = value;
        btn_ComapreCard.interactable = value;
        btn_GiveUp.interactable = value;
        tog_2.interactable = value;
        tog_5.interactable = value;
        tog_10.interactable = value;
    }
    /// <summary>
    /// 开始游戏
    /// </summary>
    private void StartGame()
    {
        m_Audio.clip = clip_Start;
        m_Audio.Play();
        txt_StakesSum.text = m_PlayerDto.stakesSum.ToString();
        txt_Hint.gameObject.SetActive(false);
        btn_UnReady.gameObject.SetActive(false);
    }
    /// <summary>
    /// 与左边玩家比牌
    /// </summary>
    private void OnCompareLeftButtonClick()
    {
        btn_CompareLeft.gameObject.SetActive(false);
        NetMsgCenter.Instance.SendMsg(OpCode.Fight, FightCode.CompareCard_CREQ, Models.GameModel.matchRoomDto.LeftPlayerId);
    }
    /// <summary>
    /// 与右边玩家比牌
    /// </summary>
    private void OnCompareRightButtonClick()
    {
        btn_CompareRight.gameObject.SetActive(false);
        NetMsgCenter.Instance.SendMsg(OpCode.Fight, FightCode.CompareCard_CREQ, Models.GameModel.matchRoomDto.RightPlayerId);
    }
    /// <summary>
    /// 准备按钮点击
    /// </summary>
    private void OnReadyButtonClick()
    {
        btn_Ready.gameObject.SetActive(false);
        txt_Hint.text = "已准备";
        txt_Hint.gameObject.SetActive(true);
        btn_UnReady.gameObject.SetActive(true);
        NetMsgCenter.Instance.SendMsg(OpCode.Match, MatchCode.Ready_CREQ, (int)Models.GameModel.RoomType);
    }
    /// <summary>
    /// 取消准备按钮点击
    /// </summary>
    private void OnUnReadyButtonClick()
    {
        btn_UnReady.gameObject.SetActive(false);
        btn_Ready.gameObject.SetActive(true);
        txt_Hint.gameObject.SetActive(false);
        NetMsgCenter.Instance.SendMsg(OpCode.Match, MatchCode.UnReady_CREQ, (int)Models.GameModel.RoomType);
    }
    /// <summary>
    /// 看牌按钮点击
    /// </summary>
    private void OnLookCardButtonClick()
    {
        btn_LookCard.interactable = false;
        for (int i = 0; i < m_CardList.Count; i++)
        {
            string cardName = "card_" + m_CardList[i].Color.ToString() + "_" + m_CardList[i].Weight.ToString();
            go_SpawnCardList[i].GetComponent<Image>().sprite = ResourcesManager.LoadCardSprite(cardName);
        }
        NetMsgCenter.Instance.SendMsg(OpCode.Fight, FightCode.LookCard_CREQ, null);
    }
    /// <summary>
    /// 跟注按钮点击
    /// </summary>
    private void OnFollowButtonClick()
    {
        NetMsgCenter.Instance.SendMsg(OpCode.Fight, FightCode.Follow_CREQ, null);
    }
    /// <summary>
    /// 加注按钮点击
    /// </summary>
    private void OnAddButtonClick()
    {
        if (tog_2.isOn)
        {
            NetMsgCenter.Instance.SendMsg(OpCode.Fight, FightCode.AddStakes_CREQ, 2);
        }
        if (tog_5.isOn)
        {
            NetMsgCenter.Instance.SendMsg(OpCode.Fight, FightCode.AddStakes_CREQ, 5);
        }
        if (tog_10.isOn)
        {
            NetMsgCenter.Instance.SendMsg(OpCode.Fight, FightCode.AddStakes_CREQ, 10);
        }
    }
    /// <summary>
    /// 比牌按钮点击
    /// </summary>
    private void OnCopareButtonClick()
    {
        go_CompareBtns.SetActive(true);
        if (m_ZjhManager.LeftIsGiveUp || m_ZjhManager.LeftIsLeave)
        {
            btn_CompareLeft.gameObject.SetActive(false);
        }
        if (m_ZjhManager.RightIsGiveUp || m_ZjhManager.RightIsLeave)
        {
            btn_CompareRight.gameObject.SetActive(false);
        }
    }
    /// <summary>
    /// 弃牌按钮点击
    /// </summary>
    private void OnGiveUpCardButtonClick()
    {
        NetMsgCenter.Instance.SendMsg(OpCode.Fight, FightCode.GiveUpCard_CREQ, null);
    }
}
