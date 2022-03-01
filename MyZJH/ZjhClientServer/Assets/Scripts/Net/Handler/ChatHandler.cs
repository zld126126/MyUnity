using Protocol.Code;
using Protocol.Dto;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChatHandler : BaseHandler
{
    public override void OnReceive(int subCode, object value)
    {
        switch (subCode)
        {
            case ChatCode.BRO:
                EventCenter.Broadcast(EventDefine.ChatBRO, (ChatDto)value);
                break;
            default:
                break;
        }
    }
}
