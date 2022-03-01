using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using DG.Tweening;
using Protocol.Code;

public class RechargePanel : MonoBehaviour
{
    private GameObject goods;
    public Button[] goodsBtnArr;
    private Button btn_Close;
    private int rechargeCount;

    private void Awake()
    {
        EventCenter.AddListener<int>(EventDefine.UpdateCoinCount, UpdateCoinCount);
        EventCenter.AddListener(EventDefine.ShowRechargePanel, Show);
        Init();
    }
    private void OnDestroy()
    {
        EventCenter.RemoveListener<int>(EventDefine.UpdateCoinCount, UpdateCoinCount);
        EventCenter.RemoveListener(EventDefine.ShowRechargePanel, Show);
    }
    private void Init()
    {
        goods = transform.Find("goods").gameObject;
        goodsBtnArr = new Button[goods.transform.childCount];
        for (int i = 0; i < goods.transform.childCount; i++)
        {
            goodsBtnArr[i] = goods.transform.GetChild(i).GetComponentInChildren<Button>();
        }
        btn_Close = transform.Find("btn_Close").GetComponent<Button>();
        btn_Close.onClick.AddListener(() =>
        {
            transform.DOScale(Vector3.zero, 0.3f);
        });
        goodsBtnArr[0].onClick.AddListener(delegate { Recharge(10); });
        goodsBtnArr[1].onClick.AddListener(delegate { Recharge(20); });
        goodsBtnArr[2].onClick.AddListener(delegate { Recharge(50); });
        goodsBtnArr[3].onClick.AddListener(delegate { Recharge(100); });
        goodsBtnArr[4].onClick.AddListener(delegate { Recharge(200); });
        goodsBtnArr[5].onClick.AddListener(delegate { Recharge(500); });
    }
    private void Show()
    {
        transform.DOScale(Vector3.one, 0.3f);
    }
    /// <summary>
    /// 充值
    /// </summary>
    /// <param name="coinCount"></param>
    private void Recharge(int coinCount)
    {
        rechargeCount = coinCount;
        NetMsgCenter.Instance.SendMsg(OpCode.Account, AccountCode.UpdateCoinCount_CREQ, coinCount);
    }
    /// <summary>
    /// 金币数量更新
    /// </summary>
    /// <param name="value"></param>
    private void UpdateCoinCount(int value)
    {
        EventCenter.Broadcast(EventDefine.Hint, "充值" + rechargeCount.ToString() + "金币成功");
    }
}
