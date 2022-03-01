using Protocol.Code;
using Protocol.Dto;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ChatPanel : MonoBehaviour
{
    public GameObject go_ChatItemPre;

    private Transform m_Parent;
    private InputField input_Msg;
    private Button btn_Send;

    private void Awake()
    {
        EventCenter.AddListener<ChatDto>(EventDefine.ChatBRO, ChatBRO);
        m_Parent = transform.Find("Chat/ScrollRect/Parent");
        input_Msg = transform.Find("InputField").GetComponent<InputField>();
        btn_Send = transform.Find("Button").GetComponent<Button>();
        btn_Send.onClick.AddListener(OnSendButtonClick);
    }
    private void OnDestroy()
    {
        EventCenter.RemoveListener<ChatDto>(EventDefine.ChatBRO, ChatBRO);
    }
    private void OnSendButtonClick()
    {
        if (input_Msg.text == null || input_Msg.text == "")
        {
            return;
        }
        NetMsgCenter.Instance.SendMsg(OpCode.Chat, ChatCode.CREQ, input_Msg.text);
        input_Msg.text = "";
    }
    private void ChatBRO(ChatDto dto)
    {
        GameObject go = Instantiate(go_ChatItemPre, m_Parent);
        //如果是我们自己发的
        if (dto.userId == Models.GameModel.userDto.UserId)
        {
            go.GetComponent<Text>().text = "我：" + dto.msg;
        }
        else
        {
            go.GetComponent<Text>().text = dto.userName + "：" + dto.msg;
        }
    }
}
