using Protocol.Code;
using Protocol.Dto;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class RegisterPanel : MonoBehaviour
{
    private InputField input_UserName;
    private InputField input_Password;
    private Button btn_Back;
    private Button btn_Register;
    private Button btn_Pwd;
    /// <summary>
    /// 是否显示密码的标志位
    /// </summary>
    private bool isShowPassword = false;

    private void Awake()
    {
        EventCenter.AddListener(EventDefine.ShowRegisterPanel, Show);

        Init();
        gameObject.SetActive(false);
    }
    private void Init()
    {
        input_UserName = transform.Find("UserName/input_UserName").GetComponent<InputField>();
        input_Password = transform.Find("Password/input_Password").GetComponent<InputField>();
        btn_Back = transform.Find("btn_Back").GetComponent<Button>();
        btn_Back.onClick.AddListener(OnBackButtonClick);
        btn_Register = transform.Find("btn_Register").GetComponent<Button>();
        btn_Register.onClick.AddListener(OnRegisterButtonClick);
        btn_Pwd = transform.Find("btn_Pwd").GetComponent<Button>();
        btn_Pwd.onClick.AddListener(OnPwdButtonClick);
    }
    private void OnDestroy()
    {
        EventCenter.RemoveListener(EventDefine.ShowRegisterPanel, Show);
    }
    /// <summary>
    /// 密码显示或隐藏按钮点击
    /// </summary>
    private void OnPwdButtonClick()
    {
        isShowPassword = !isShowPassword;
        if (isShowPassword)
        {
            input_Password.contentType = InputField.ContentType.Standard;
            btn_Pwd.GetComponentInChildren<Text>().text = "隐藏";
        }
        else
        {
            input_Password.contentType = InputField.ContentType.Password;
            btn_Pwd.GetComponentInChildren<Text>().text = "显示";
        }
        EventSystem.current.SetSelectedGameObject(input_Password.gameObject);
    }
    /// <summary>
    /// 返回按钮点击
    /// </summary>
    private void OnBackButtonClick()
    {
        gameObject.SetActive(false);
        EventCenter.Broadcast(EventDefine.ShowLoginPanel);
    }
    /// <summary>
    /// 注册按钮点击
    /// </summary>
    private void OnRegisterButtonClick()
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
        //向服务器发送数据，注册一个用户
        AccountDto dto = new AccountDto(input_UserName.text, input_Password.text);
        NetMsgCenter.Instance.SendMsg(OpCode.Account, AccountCode.Register_CREQ, dto);
    }
    private void Show()
    {
        gameObject.SetActive(true);
    }
}
