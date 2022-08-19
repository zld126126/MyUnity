using GameFramework;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
using UnityGameFramework.Runtime;

public class BuiltinViewComponent : GameFrameworkComponent
{
    [Header("Loading Progress:")] [SerializeField]
    GameObject loadingProgressNode = null;

    [SerializeField] private Text progressText;
    [SerializeField] private Image progressImg;

    [Space(20)] [SerializeField] GameObject tipsDialog = null;
    [SerializeField] GameObject adLoadingMask = null;

    private void Start()
    {
        ShowLoadingProgress();
        adLoadingMask.SetActive(false);
    }

    public void ShowLoadingProgress(float defaultProgress = 0)
    {
        loadingProgressNode.SetActive(true);
        SetLoadingProgress(defaultProgress);
    }

    public void SetLoadingProgress(float progress)
    {
        progressImg.fillAmount = progress;
        progressText.text = Utility.Text.Format("{0:N0}%", progressImg.fillAmount * 100);
    }

    public void HideLoadingProgress()
    {
        loadingProgressNode.SetActive(false);
    }

    public void ShowTips(string title, string content, string yes_btn_title = "YES", string no_btn_title = "NO",
        UnityEngine.Events.UnityAction yes_cb = null, UnityEngine.Events.UnityAction no_cb = null)
    {
        tipsDialog.SetActive(true);
        if (yes_cb == null && no_cb == null)
        {
            yes_cb = HideTips;
        }

        var btns = tipsDialog.GetComponentsInChildren<Button>(true);
        btns[0].gameObject.SetActive(no_cb != null);
        btns[0].GetComponentInChildren<Text>().text = no_btn_title;

        btns[1].gameObject.SetActive(yes_cb != null);
        btns[1].GetComponentInChildren<Text>().text = yes_btn_title;
        var dialog_bg = tipsDialog.transform.Find("DialogBG");
        dialog_bg.Find("Title").GetComponent<Text>().text = title.ToUpper();
        dialog_bg.Find("Content").GetComponent<TextMeshProUGUI>().text = content;
        btns[0].onClick.RemoveAllListeners();
        btns[1].onClick.RemoveAllListeners();
        if (no_cb != null)
            btns[0].onClick.AddListener(() =>
            {
                no_cb.Invoke();
                HideTips();
            });
        if (yes_cb != null)
            btns[1].onClick.AddListener(() =>
            {
                yes_cb.Invoke();
                HideTips();
            });
    }

    public void HideTips()
    {
        tipsDialog.SetActive(false);
    }
}