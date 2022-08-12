using System;
using System.Collections;
using UnityEngine;
using UnityEngine.UI;
public class Main : MonoBehaviour
{
    public Transform AIparent;
    public GameObject NpcItem;
    public Transform NpcParent;
    public GameObject Fly;
    public GameObject Letter;
    public Transform flyParent;
    public Transform LetterParent;
    public Transform target;
    public Transform Cake;
    public Text Money;
    public Image[] HpItems;
    public Sprite[] HpSpr;
    public Sprite[] cakeSpr;
    public GameObject leftUI;
    private ShakeCamera sharkCamera;
    //扣血虚线颜色变红
    private bool isRed = false;
    private float isRedTime = 0;

    private int life = 1;
    // Start is called before the first frame update
    void Start()
    {
        //创建键盘
        LetterLogic.Instance.CreateLetter(Letter, LetterParent);
        //创建小战斗
        MainLogic.Instance.CreateLittleBattle(NpcItem, NpcParent);

        Cake.GetComponent<Image>().sprite = cakeSpr[PlayManager.Instance.Level - 1];

        EventManager.Instance.AddListening(Config.UIRefresh, InitHPImage);
    }
    // Update is called once per frame
    void Update()
    {
        if (isRed)
        {
            isRedTime += Time.deltaTime;
            if (isRedTime >= 0.2f)
            {
                isRedTime = 0;
                SetLineColor(new byte[] { 255, 255, 255, 255 });
            }
        }
        if (Money != null)
        {
            Money.text = PlayManager.Instance.money.ToString();
        }
        if (MainLogic.Instance.isPause)return;
        StartCoroutine(CreateFly());
        MainLogic.Instance.createTime += 1;
        KeyDownCheck();
    }
    IEnumerator CreateFly()
    {
        yield return new WaitForSeconds(MainLogic.Instance.createTime);
        //创建苍蝇
        LetterLogic.Instance.CreateFly(Fly, flyParent, target, Cake, SetHP);
    }
    //设置血量
    private void SetHP()
    {
           //// sharkCamera.enabled = true;
        MainLogic.Instance.ZhengDong();
        PlayManager.Instance.HP = -1;
        int num = PlayManager.Instance.HP;
        isRed = true;
        SetLineColor(new byte[] { 255, 0, 0, 255 });
        for (int i = HpItems.Length - 1; i >= 0; i--)
        {
            if (num > 0)
            {
                HpItems[i].sprite = HpSpr[1];
                num--;
            }
            else
            {
                HpItems[i].sprite = HpSpr[0];
            }
        }
        if (PlayManager.Instance.HP <= 0)
        {
            AudioManager.Instance.PlaySound(Config.Die);
            if (life > 0)
            {
                ShowLifeUI();
                life -=1;
            }
            else
            {
                OpenGameClear();
            }
        }
    }
    //设置虚线颜色
    private void SetLineColor(byte[] clo)
    {
        Image im = target.GetComponent<Image>();
        im.color = new Color32(clo[0], clo[1], clo[2], clo[3]);
    }

    //结算
    private void OpenGameClear()
    {
        EventManager.Instance.StopListening(Config.UIRefresh, InitHPImage);
        MainLogic.Instance.SetVectoryOrDe(MainLogic.JieSuanType.Defeate);
    }

    //复活界面
    private void ShowLifeUI()
    {
        //暂停苍蝇飞行
        LetterLogic.Instance.Pause();
        //暂停创建苍蝇
        MainLogic.Instance.isPause = true;
        StopAllCoroutines();
        GameObject ui = Instantiate(leftUI, transform.position, transform.rotation);
        ui.transform.SetParent(transform);

    }

    private void InitHPImage()
    {
        for (int i = HpItems.Length - 1; i >= 0; i--)
        {
            HpItems[i].sprite = HpSpr[1];
        }
    }

    /// <summary>
    /// 键盘按下检查
    /// </summary>
    private void KeyDownCheck()
    {
        if (Input.anyKey)
        {
            foreach (KeyCode keyCode in Enum.GetValues(typeof(KeyCode)))
            {
                if (Input.GetKeyDown(keyCode))
                {
                    string value1 = keyCode.ToString().ToLower();
                    LetterLogic.Instance.ClearFly(value1);
                    return;
                }
            }
        }
    }
}

