using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Text.RegularExpressions;
using UnityEngine.SceneManagement;

public class MainLogic : MonoSingleton<MainLogic>
{
    public enum JieSuanType
    {
        None = 0,
        Vectort = 1,
        Defeate = 2,
    }

    public List<NpcItem> list = new List<NpcItem>();

    private int NUMBER = 9;

    public bool isPause = false;

    public int createTime = 1;

    public void Start()
    {
    }

    public void CreateLittleBattle(GameObject obj, Transform parent)
    {
        //当前赚取的金币初始化
        curAllMoney = 0;
        //小战斗共有9个
        for (int i = 0; i < NUMBER; i++)
        {
            GameObject a = (GameObject) Instantiate(obj, transform.position, transform.rotation);
            a.transform.SetParent(parent);
            a.transform.localScale = new Vector3(1, 1, 1);
            NpcItem b = a.GetComponent<NpcItem>();
            list.Add(b);
        }
    }

    public string GenerateSurname(bool isplay = false)
    {
        string name = string.Empty;
        string[] currentConsonant;
        string[] vowels = "a,a,a,a,a,e,e,e,e,e,e,e,e,e,e,e,i,i,i,o,o,o,u,y,ee,ee,ea,ea,ey,eau,eigh,oa,oo,ou,ough,ay"
            .Split(',');
        string[] commonConsonants = "s,s,s,s,t,t,t,t,t,n,n,r,l,d,sm,sl,sh,sh,th,th,th".Split(',');
        string[] averageConsonants = "sh,sh,st,st,b,c,f,g,h,k,l,m,p,p,ph,wh".Split(',');
        string[] middleConsonants =
            "x,ss,ss,ch,ch,ck,ck,dd,kn,rt,gh,mm,nd,nd,nn,pp,ps,tt,ff,rr,rk,mp,ll".Split(','); //Can't start
        string[] rareConsonants = "j,j,j,v,v,w,w,w,z,qu,qu".Split(',');
        System.Random
            rng = new System.Random(System.Guid.NewGuid().GetHashCode()); //http://codebetter.com/blogs/59496.aspx
        int[] lengthArray = new int[] {2, 2, 2, 2, 2, 2, 3, 3, 3, 4}; //Favor shorter names but allow longer ones
        int length = lengthArray[rng.Next(lengthArray.Length)];
        for (int i = 0; i < length; i++)
        {
            int letterType = rng.Next(1000);
            if (letterType < 775) currentConsonant = commonConsonants;
            else if (letterType < 875 && i > 0) currentConsonant = middleConsonants;
            else if (letterType < 985) currentConsonant = averageConsonants;
            else currentConsonant = rareConsonants;
            name += currentConsonant[rng.Next(currentConsonant.Length)];
            name += vowels[rng.Next(vowels.Length)];
            if (name.Length > 4 && rng.Next(1000) < 800) break; //Getting long, must roll to save
            if (name.Length > 6 && rng.Next(1000) < 950) break; //Really long, roll again to save
            if (name.Length > 7) break; //Probably ridiculous, stop building and add ending
        }

        int endingType = rng.Next(1000);
        if (name.Length > 6)
            endingType -= (name.Length * 25); //Don't add long endings if already long
        else
            endingType += (name.Length * 10); //Favor long endings if short
        if (endingType < 400)
        {
        } // Ends with vowel
        else if (endingType < 775) name += commonConsonants[rng.Next(commonConsonants.Length)];
        else if (endingType < 825) name += averageConsonants[rng.Next(averageConsonants.Length)];
        else if (endingType < 840) name += "ski";
        else if (endingType < 860) name += "son";
        else if (Regex.IsMatch(name, "(.+)(ay|e|ee|ea|oo)$") || name.Length < 5)
        {
            name = "Mc" + name.Substring(0, 1).ToUpper() + name.Substring(1);
            return name;
        }
        else name += "ez";

        name = name.Substring(0, 1).ToUpper() + name.Substring(1); //Capitalize first letter
        if (isplay)
        {
            PlayManager.Instance.playername = name;
        }

        return name;
    }

    private int curAllMoney = 100;

    public int CurMoney
    {
        get { return curAllMoney; }
        set { curAllMoney += value; }
    }

    //玩家杀死一个苍蝇的获得金币逻辑
    public void SetMoney(int baseMoney)
    {
        int dieNumber = 1;
        for (int i = 0; i < list.Count; i++)
        {
            if (list[i].isdie)
            {
                dieNumber++;
            }
        }

        curAllMoney += baseMoney * dieNumber;
        PlayManager.Instance.money = baseMoney * dieNumber;
        //通知UI 暂时先不写
    }

    public JieSuanType Vectory { get; private set; }

    //设置胜负
    public void SetVectoryOrDe(JieSuanType value)
    {
        if (Vectory != JieSuanType.None) return;
        Vectory = value;
        MainLogic.Instance.Clear();
        PlayManager.Instance.Clear();
        LetterLogic.Instance.Clear();
        LetterLogic.Instance.DestroyAllFlyMouse();

        (GameEntry.Procedure.CurrentProcedure as ProcedureBattleGame).BattleClear();
    }

    public void Clear()
    {
        list.Clear();
    }

    public void ClearBattleType()
    {
        isPause = false;
        Vectory = JieSuanType.None;
        createTime = 1;
    }

    //小战斗死亡判断
    public void SetLittleBattle()
    {
        int index = 1;
        for (int i = 0; i < MainLogic.Instance.list.Count; i++)
        {
            if (MainLogic.Instance.list[i].isdie)
            {
                index++;
            }
        }

        if (index == MainLogic.Instance.list.Count)
        {
            //表示NPC全部死亡
            SetVectoryOrDe(JieSuanType.Vectort);
        }
    }

    //震动
    public void ZhengDong()
    {
#if UNITY_ANDROID
        if (PlayManager.Instance.Zhendong == 1)
        {
            Handheld.Vibrate();
        }
#endif
    }
}