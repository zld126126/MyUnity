/****************************************************
    文件：LoadingWnd.cs
	作者：SIKI学院——Plane
    邮箱: 1785275942@qq.com
    日期：2018/12/3 6:6:10
	功能：加载进度界面
*****************************************************/

using UnityEngine;
using UnityEngine.UI;

public class LoadingWnd : WindowRoot {
    public Text txtTips;
    public Image imgFG;
    public Image imgPoint;
    public Text txtPrg;

    private float fgWidth;

    protected override void InitWnd() {
        base.InitWnd();

        fgWidth = imgFG.GetComponent<RectTransform>().sizeDelta.x;

        SetText(txtTips, "这是一条游戏Tips");
        SetText(txtPrg, "0%");
        imgFG.fillAmount = 0;
        imgPoint.transform.localPosition = new Vector3(-545f, 0, 0);
    }

    public void SetProgress(float prg) {
        SetText(txtPrg, (int)(prg * 100) + "%");
        imgFG.fillAmount = prg;

        float posX = prg * fgWidth - 545;
        imgPoint.GetComponent<RectTransform>().anchoredPosition = new Vector2(posX, 0);
    }
}