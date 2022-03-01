using Protocol.Code;
using Protocol.Dto;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class LoginPanel : MonoBehaviour
{
    private InputField input_UserName;
    private InputField input_Password;
    
    private Button btn_Login;
    private Button btn_Register;
    private Button btn_KickOut;

    private void Awake()
    {
        EventCenter.AddListener(EventDefine.ShowLoginPanel, Show);
        Init();
    }
    private void Init()
    {
        input_UserName = transform.Find("input_UserName").GetComponent<InputField>();
        input_Password = transform.Find("input_Password").GetComponent<InputField>();
        
        btn_Login = transform.Find("btn_Login").GetComponent<Button>();
        btn_Login.onClick.AddListener(OnLoginButtonClick);
        btn_Register = transform.Find("btn_Register").GetComponent<Button>();
        btn_Register.onClick.AddListener(OnRegisterButtonClick);
        btn_KickOut = transform.Find("btn_KickOut").GetComponent<Button>();
        btn_KickOut.onClick.AddListener(OnKickOutButtonClick);
    }
    private void OnDestroy()
    {
        EventCenter.RemoveListener(EventDefine.ShowLoginPanel, Show);
    }
    /// <summary>
    /// 注册按钮点击
    /// </summary>
    private void OnRegisterButtonClick()
    {
        EventCenter.Broadcast(EventDefine.ShowRegisterPanel);
    }
    /// <summary>
    /// 登陆按钮点击
    /// </summary>
    private void OnLoginButtonClick()
    {
        if (input_UserName.text == null || input_UserName.text == "")
        {
            EventCenter.Broadcast(EventDefine.Hint, "请输入用户名");
            //Debug.Log("请输入用户名");
            return;
        }
        if (input_Password.text == null || input_Password.text == "")
        {
            EventCenter.Broadcast(EventDefine.Hint, "请输入密码");
            //Debug.Log("请输入密码");
            return;
        }
        //向服务器发送登陆的请求
        AccountDto dto = new AccountDto(input_UserName.text, input_Password.text);
        NetMsgCenter.Instance.SendMsg(OpCode.Account, AccountCode.Login_CREQ, dto);
    }
    private void Show()
    {
        gameObject.SetActive(true);
    }
    private void OnKickOutButtonClick() {
        NetMsgCenter.Instance.SendMsg(OpCode.Account, AccountCode.Login_CREQ, null);
    }
}
