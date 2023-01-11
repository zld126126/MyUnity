using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class RankListManager : MonoBehaviour {

    private dfScrollPanel panel;

    public GameObject item;

    void Awake() {
        panel = this.GetComponent<dfScrollPanel>();
    }

    void Start() {
        UpdateRankList();
    }


    public void UpdateRankList() {
        List<RankItem> rankitemList = GetAllRankList();

        for (int i = 0; i < rankitemList.Count; i++) {
            dfControl control = panel.AddPrefab(item);
            RankItem rankitem = control.GetComponent<RankItem>();
            rankitem.SetShow(i+1,rankitemList[i].date,rankitemList[i].score+"");
        }

    }

    private List<RankItem> GetAllRankList() {
        List<RankItem> rankitemList = new List<RankItem>();
        //TODO hardcode here 我们需要从本地取得分数信息
        RankItem item1 = new RankItem();
        item1.date = "2013-3-3"; item1.score = 90000;
        rankitemList.Add(item1);

        RankItem item2 = new RankItem();
        item2.date = "2113-3-3"; item1.score = 8000;
        rankitemList.Add(item2);

        RankItem item3 = new RankItem();
        item3.date = "2013-9-3"; item3.score = 90770;
        rankitemList.Add(item3);

        RankItem item4 = new RankItem();
        item4.date = "2013-3-3"; item4.score = 90000;
        rankitemList.Add(item4);

        RankItem item5 = new RankItem();
        item5.date = "2013-3-3"; item5.score = 90000;
        rankitemList.Add(item5);

        return rankitemList;
    }

}
