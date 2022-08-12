using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;
//小战斗界面
public class NpcItem : MonoBehaviour
{
    public Text Name;
    public GameObject Fly;
    public Transform flyParent;
    public Transform target;
    public Transform Cake;
    public Text Hit;
    public Transform DieImage;
    private NPCAI ai;
    private List<FlyMouse> List = new List<FlyMouse>();
    private List<string> letter = new List<string> { "a", "b", "c", "d", "e", "f", "g", "h", "i", "g", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z" };
    private List<string> catchletter = new List<string>();
    private int _wait = 1;
    private float _Aiwait = 0.1f;

    private int HP = 3;
    private float dieTime = 0;
    public bool isdie = false;

    //暂停
    private bool isPause = false;
    void Start()
    {
        HP = 3;
        DieImage.gameObject.SetActive(false);
        CreateAI();
        isdie = false;
        Hit.gameObject.SetActive(false);
        isPause = false;
        SetName();
    }

    // Update is called once per frame
    void Update()
    {
        if(isPause)return;
        if (ai != null)
        {
            ai.Refresh();
        }
        if (DieImage.gameObject.activeSelf == true)
        {
            dieTime += Time.deltaTime;
            if (dieTime > 0.5f)
            {
                dieTime = 0;
                DieImage.gameObject.SetActive(false);
            }
        }
        StartCoroutine(CreateFly());
        _wait += 1;
    }
    public void PlayGame()
    {
    }
    IEnumerator CreateFly()
    {
        yield return new WaitForSeconds(_wait);
        //创建苍蝇
        CreateLitterFly(Fly, flyParent, target, Cake, 0.1f);
    }

    public void CreateLitterFly(GameObject fly, Transform parent, Transform target, Transform cake, float scale = 1)
    {
        if (letter.Count > 0)
        {
            GameObject a = (GameObject)Instantiate(fly, transform.position, transform.rotation);
            a.transform.SetParent(parent);
            a.transform.localPosition = new Vector3(GetXPos(), 0, 0);
            a.transform.localScale = new Vector3(scale, scale, scale);
            LittleBattle b = a.GetComponent<LittleBattle>();
            b.Init(cake, SetHP);
            b.SetBaseData(0.2f, 10, 5, 0);
            int carL = Random.Range(0, letter.Count);
            string carLetter = letter[carL];
            catchletter.Add(carLetter);
            letter.RemoveAt(carL);
            b.SetValue(carLetter);
            float len = Mathf.Abs(target.transform.localPosition.y - parent.transform.localPosition.y);
            b.Run(Mathf.Abs(len));
            List.Add(b);
        }

    }
    private int GetXPos()
    {
        int seed = (int)System.DateTime.Now.Ticks;
        Random.InitState(seed);
        int curx = 0;
        int len = 40; //小界面
        curx += Random.Range(-len, len);
        return curx;
    }

    //创建一个AI 
    private void CreateAI()
    {
        ai = new NPCAI();
        ai.Init(this);
    }

    //点击苍蝇
    // value 概率
    public void ClickFly()
    {
        StartCoroutine(IenClickFly());
        _Aiwait += 0.1f;
    }
    IEnumerator IenClickFly()
    {
        yield return new WaitForSeconds(_Aiwait);
        Click();
    }
    private void Click()
    {
        //随机找一个苍蝇点
        if (List.Count <= 0) return;
        int index = Random.Range(0, List.Count);
        if (List[index] != null && ISClick(ai.pro) && !List[index].isTarget && !List[index].isDie)
        {
            List[index].Clear();
            catchletter.Remove(List[index]._value);
            letter.Add(List[index]._value);
            List.RemoveAt(index);
        }
    }
    //判断是否点中
    private bool ISClick(float value)
    {
        int seed = (int)System.DateTime.Now.Ticks;
        Random.InitState(seed);
        float curx = 0;
        curx = Random.Range(0, 100);
        curx = curx / 100;
        if (curx >= value) return true;
        return false;
    }

    //扣血逻辑
    private void SetHP()
    {
        if (isdie) return;
        if (HP > 0)
        {
            HP -= 1;
            DieImage.gameObject.SetActive(true);
        }
        else
        {
            Die();
        }   
    }
    //死亡逻辑
    private void Die()
    {
        int index = 1;
        for(int i=0;i<9;i++)
        {
            if(MainLogic.Instance.list[i].isdie)
            {
                index++;
            }
        }
        Hit.text = index.ToString();
        Hit.gameObject.SetActive(true);
        isdie = true;
        //死亡之后 不能拍
        List.Clear();
        //不飞了
        isPause = true;
        StopAllCoroutines();

        MainLogic.Instance.SetLittleBattle();
    }

    private void SetName()
    {
        string name = MainLogic.Instance.GenerateSurname();
        Name.text = name;
    }

    public void Clear()
    {
        if(gameObject!=null)
        {
            Destroy(gameObject);
        }
    }
}
