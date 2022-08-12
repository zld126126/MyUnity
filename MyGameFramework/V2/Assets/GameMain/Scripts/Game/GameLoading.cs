using System;
using UnityEngine;
using UnityEngine.UI;

//loading
public class GameLoading : MonoBehaviour
{
    //开始按钮
    private Button btn_ready;

    private void Start()
    {
        btn_ready = GameObject.Find("btn_ready").GetComponent<Button>();
        btn_ready.onClick.AddListener(StartLaunch);
    }
    
    private void StartLaunch()
    {
        AudioManager.Instance.PlaySound(Config.Click);
        (GameEntry.Procedure.CurrentProcedure as ProcedureLoadingUI).StartLaunch();
    }
}
