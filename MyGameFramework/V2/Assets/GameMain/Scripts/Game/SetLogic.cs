using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class SetLogic : MonoBehaviour
{
    public Button btn_Set;
    public Button btn_zhendong;
    public Button btn_music;
    public Sprite[] zhendongSpr;
    public Sprite[] musicSpr;
    // Start is called before the first frame update
    void Start()
    {
        btn_Set.onClick.AddListener(SetClick);
        btn_zhendong.onClick.AddListener(SetZhenDong);
        btn_music.onClick.AddListener(SetMusic);

        SetData();
    }
    private void SetClick()
    {
        AudioManager.Instance.PlaySound(Config.Click);
        PlayManager.Instance.ShowSet = PlayManager.Instance.ShowSet == 0 ? 1 : 0;
        SetData();
    }
    void SetData()
    {
        bool showset = PlayManager.Instance.ShowSet == 0 ? true : false;
        btn_zhendong.gameObject.SetActive(showset);
        btn_music.gameObject.SetActive(showset);
        btn_zhendong.GetComponent<Image>().sprite = zhendongSpr[PlayManager.Instance.Zhendong];
        btn_music.GetComponent<Image>().sprite = musicSpr[PlayManager.Instance.Music];
    }
    private void SetZhenDong()
    {
        AudioManager.Instance.PlaySound(Config.Click);
        PlayManager.Instance.Zhendong = PlayManager.Instance.Zhendong == 0 ? 1 : 0;
        btn_zhendong.GetComponent<Image>().sprite = zhendongSpr[PlayManager.Instance.Zhendong];
        Debug.LogError("震动 == " + PlayManager.Instance.Zhendong);
    }
    private void SetMusic()
    {
        AudioManager.Instance.PlaySound(Config.Click);
        PlayManager.Instance.Music = PlayManager.Instance.Music == 0 ? 1 : 0;
        btn_music.GetComponent<Image>().sprite = musicSpr[PlayManager.Instance.Music];
        Debug.LogError("音乐 == " + PlayManager.Instance.Music);
    }
    // Update is called once per frame
    void Update()
    {

    }
}
