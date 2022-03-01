using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using DG.Tweening;
using Protocol.Dto;

public class RankListPanel : MonoBehaviour
{
    public GameObject go_ItemPre;

    private Button btn_Close;
    private Transform m_Parent;
    private List<GameObject> listGo = new List<GameObject>();

    private void Awake()
    {
        EventCenter.AddListener<RankListDto>(EventDefine.SendRankListDto, GetRankListDto);
        EventCenter.AddListener(EventDefine.ShowRankListPanel, Show);
        btn_Close = transform.Find("btn_Close").GetComponent<Button>();
        btn_Close.onClick.AddListener(OnCloseButtonClick);
        m_Parent = transform.Find("List/ScrollRect/Parent");
    }
    private void OnDestroy()
    {
        EventCenter.RemoveListener<RankListDto>(EventDefine.SendRankListDto, GetRankListDto);
        EventCenter.RemoveListener(EventDefine.ShowRankListPanel, Show);
    }
    private void OnCloseButtonClick()
    {
        transform.DOScale(Vector3.zero, 0.3f);
    }
    private void Show()
    {
        transform.DOScale(Vector3.one, 0.3f);
    }
    /// <summary>
    /// 得到排行榜传输模型
    /// </summary>
    /// <param name="dto"></param>
    private void GetRankListDto(RankListDto dto)
    {
        if (dto == null) return;

        foreach (var go in listGo)
        {
            Destroy(go);
        }
        listGo.Clear();
        for (int i = 0; i < dto.rankList.Count; i++)
        {
            if (dto.rankList[i].UserName == Models.GameModel.userDto.UserName)
            {
                GameObject go = Instantiate(go_ItemPre, m_Parent);
                go.transform.Find("Index/txt_Index").GetComponent<Text>().text = (i + 1).ToString();
                go.transform.Find("Index/txt_Index").GetComponent<Text>().color = Color.red;
                go.transform.Find("txt_UserName").GetComponent<Text>().text = "我";
                go.transform.Find("txt_UserName").GetComponent<Text>().color = Color.red;
                go.transform.Find("txt_CoinCount").GetComponent<Text>().text = dto.rankList[i].CoinCount.ToString();
                go.transform.Find("txt_CoinCount").GetComponent<Text>().color = Color.red;

                listGo.Add(go);
            }
            else
            {
                GameObject go = Instantiate(go_ItemPre, m_Parent);
                go.transform.Find("Index/txt_Index").GetComponent<Text>().text = (i + 1).ToString();
                go.transform.Find("txt_UserName").GetComponent<Text>().text = dto.rankList[i].UserName;
                go.transform.Find("txt_CoinCount").GetComponent<Text>().text = dto.rankList[i].CoinCount.ToString();

                listGo.Add(go);
            }
        }
    }
}
