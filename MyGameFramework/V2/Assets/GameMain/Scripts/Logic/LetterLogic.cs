using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
public class LetterLogic : MonoSingleton<LetterLogic>
{
    private List<FlyMouse> List = new List<FlyMouse>();
    private List<string> letter = new List<string> { "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z" };
    private List<string> catchletter = new List<string>();
    private List<string> first = new List<string> { "Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P" };
    private List<string> second = new List<string> { "A", "S", "D", "F", "G", "H", "J", "K", "L" };
    private List<string> third = new List<string> { "Z", "X", "C", "V", "B", "N", "M" };
    private List<string> space = new List<string> { "space", };

    // Start is called before the first frame update
    public void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {

    }

    ///<summary>
    /// 创建点击按钮
    ///</summary>
    public void CreateLetter(GameObject letter, Transform parent)
    {
        for (int i = 0; i < first.Count; i++)
        {
            LetterItem(letter, parent, i, -314, 69, first);
        }
        for (int i = 0; i < second.Count; i++)
        {
            LetterItem(letter, parent, i, -280, 164, second);
        }
        for (int i = 0; i < third.Count; i++)
        {
            LetterItem(letter, parent, i, -207, 259, third);
        }
        //创建space按键
        LetterItem sp = LetterItem(letter, parent, 0, 0, 359, space);
        sp.SetSize();

    }
    private LetterItem LetterItem(GameObject Letter, Transform parent, int index, int startPos, int height, List<string> list)
    {
        GameObject a = (GameObject)Instantiate(Letter, transform.position, transform.rotation);
        a.transform.SetParent(parent);
        float height1 = Letter.transform.GetComponent<RectTransform>().rect.height;
        a.transform.localPosition = new Vector3(startPos + index * 70, 419 / 2 - height, 0);
        a.transform.localScale = new Vector3(1, 1, 1);
        LetterItem b = a.GetComponent<LetterItem>();
        b.SetValue(list[index]);
        return b;
    }

    ///<summary>
    /// 创建苍蝇
    ///</summary>

    public void CreateFly(GameObject fly, Transform parent, Transform target, Transform cake, Action action, float scale = 1)
    {
        if (letter.Count > 0)
        {
            GameObject a = (GameObject)Instantiate(fly, transform.position, transform.rotation);
            a.transform.SetParent(parent);
            a.transform.localPosition = new Vector3(GetXPos(), 0, 0);
            a.transform.localScale = new Vector3(scale, scale, scale);
            FlyMouse b = a.GetComponent<FlyMouse>();
            b.Init(cake, action);
            b.SetBaseData();
            int carL = UnityEngine.Random.Range(0, letter.Count);
            string carLetter = letter[carL];
            catchletter.Add(carLetter);
            letter.RemoveAt(carL);
            b.SetValue(carLetter);
            float len = Mathf.Abs(target.transform.localPosition.y - parent.transform.localPosition.y);
            b.Run(len);
            List.Add(b);
        }

    }
    //随机取一个X坐标 范围 
    private int GetXPos()
    {
        int seed = (int)System.DateTime.Now.Ticks;
        UnityEngine.Random.InitState(seed);
        int curx = 0;
        int len = 375;//UnityEngine.Screen.width / 2;
        curx += UnityEngine.Random.Range(-len, len);
        return curx;
    }

    ///<summary>
    ///清除苍蝇
    ///</summary>
    public void ClearFly(string value)
    {
        if (List.Count <= 0) return;
        //屏幕震动
        MainLogic.Instance.ZhengDong();
        for (int i = 0; i < List.Count; i++)
        {
            if (List[i]._value == value && !List[i].isTarget)
            {
                AudioManager.Instance.PlaySound(Config.Hit);
                List[i].Clear();
                catchletter.Remove(value);
                letter.Add(value);
                MainLogic.Instance.SetMoney(1);
                List.RemoveAt(i);
                i--;
            }
        }
    }
    //暂停苍蝇
    public void Pause()
    {
        if (List == null) return;
        for (int i = 0; i < List.Count; i++)
        {
            List[i].Pause();
        }
    }
    public void Clear()
    {
        letter = new List<string> { "a", "b", "c", "d", "e", "f", "g", "h", "i", "g", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z" };
        catchletter.Clear();
    }
    //删除苍蝇
    public void DestroyAllFlyMouse()
    {
        if (List == null) return;
        for (int i = 0; i < List.Count; i++)
        {
            List[i].Destroy();
        }
        List.Clear();
    }
}
