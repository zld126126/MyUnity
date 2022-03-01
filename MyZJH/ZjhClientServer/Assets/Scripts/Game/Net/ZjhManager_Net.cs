using Protocol.Code;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class ZjhManager_Net : MonoBehaviour
{
    private Text txt_BottomStakes;
    private Text txt_TopStakes;
    private Button btn_Back;
    private SelfManager_Net m_SelfManager;
    private LeftManager_Net m_LeftManager;
    private RightManager_Net m_RightManager;
    public bool LeftIsLeave { get { return m_LeftManager.m_IsRun; } }
    public bool LeftIsGiveUp { get { return m_LeftManager.m_IsGiveUpCard; } }
    public bool RightIsLeave { get { return m_RightManager.m_IsRun; } }
    public bool RightIsGiveUp { get { return m_RightManager.m_IsGiveUpCard; } }

    private void Awake()
    {
        if (NetMsgCenter.Instance != null)
            NetMsgCenter.Instance.SendMsg(OpCode.Match, MatchCode.Enter_CREQ, (int)Models.GameModel.RoomType);
        Init();
    }
    private void Init()
    {
        m_SelfManager = GetComponentInChildren<SelfManager_Net>();
        m_LeftManager = GetComponentInChildren<LeftManager_Net>();
        m_RightManager = GetComponentInChildren<RightManager_Net>();

        txt_BottomStakes = transform.Find("Main/txt_BottomStakes").GetComponent<Text>();
        txt_TopStakes = transform.Find("Main/txt_TopStakes").GetComponent<Text>();
        btn_Back = transform.Find("Main/btn_Back").GetComponent<Button>();
        btn_Back.onClick.AddListener(() =>
        {
            SceneManager.LoadScene("2.Main");
            //向服务器发送离开匹配房间的请求
            NetMsgCenter.Instance.SendMsg(OpCode.Match, MatchCode.Leave_CREQ, (int)Models.GameModel.RoomType);
            NetMsgCenter.Instance.SendMsg(OpCode.Fight, FightCode.Leave_CREQ, null);
        });
        txt_BottomStakes.text = Models.GameModel.BottomStakes.ToString();
        txt_TopStakes.text = Models.GameModel.TopStakes.ToString();
    }
}
