using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using DG.Tweening;
using UnityEngine.SceneManagement;

public enum GameType
{
    Net,
    StandAlone,
}
public class RoomChoosePanel : MonoBehaviour
{
    private Button btn_EnterRoom1;
    private Button btn_EnterRoom2;
    private Button btn_EnterRoom3;
    private Button btn_Close;
    private GameType m_GameType;

    private void Awake()
    {
        EventCenter.AddListener<GameType>(EventDefine.ShowRoomChoosePanel, Show);
        Init();
    }
    private void OnDestroy()
    {
        EventCenter.RemoveListener<GameType>(EventDefine.ShowRoomChoosePanel, Show);
    }
    private void Init()
    {
        btn_EnterRoom1 = transform.Find("Room_1/btn_EnterRoom").GetComponent<Button>();
        btn_EnterRoom1.onClick.AddListener(delegate { EnterRoom(10, 100); });

        btn_EnterRoom2 = transform.Find("Room_2/btn_EnterRoom").GetComponent<Button>();
        btn_EnterRoom2.onClick.AddListener(delegate { EnterRoom(20, 200); });

        btn_EnterRoom3 = transform.Find("Room_3/btn_EnterRoom").GetComponent<Button>();
        btn_EnterRoom3.onClick.AddListener(delegate { EnterRoom(50, 500); });
        btn_Close = transform.Find("btn_Close").GetComponent<Button>();
        btn_Close.onClick.AddListener(() =>
        {
            transform.DOScale(Vector3.zero, 0.3f);
        });
    }
    private void Show(GameType gameType)
    {
        m_GameType = gameType;
        transform.DOScale(Vector3.one, 0.3f);
    }
    /// <summary>
    /// 进入房间
    /// </summary>
    /// <param name="botoomStakes"></param>
    /// <param name="topStakes"></param>
    private void EnterRoom(int botoomStakes, int topStakes)
    {
        Models.GameModel.BottomStakes = botoomStakes;
        Models.GameModel.TopStakes = topStakes;

        switch (botoomStakes)
        {
            case 10:
                Models.GameModel.RoomType = RoomType.Room_10;
                break;
            case 20:
                Models.GameModel.RoomType = RoomType.Room_20;
                break;
            case 50:
                Models.GameModel.RoomType = RoomType.Room_50;
                break;
            default:
                break;
        }
        switch (m_GameType)
        {
            case GameType.Net:
                //进入联网游戏场景
                SceneManager.LoadScene("4.Net");
                break;
            case GameType.StandAlone:
                //进入单机游戏场景
                SceneManager.LoadScene("3.StandAlone");
                break;
            default:
                break;
        }
    }
}
