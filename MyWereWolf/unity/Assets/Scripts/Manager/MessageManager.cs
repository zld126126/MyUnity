using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MessageManager
{
    public enum DieType
    {
        Zero,
        One,
        Two
    }

    public enum GameJudgementState
    {
        VillagerWin,
        WolfWin,
        GoOn
    }

    public List<int> deadPlayerNum = new List<int>();

    //本场游戏对应身份的玩家号码
    public int[] wolves=new int[4];
    public int[] villagers=new int[4];
    public int defender;
    public int hunter;
    public int prophet;
    public int witch;

    //操作对象与状态
    public int wolfKillNumber;
    public int witchKillNumber;
    public int defendNumber;

    public int lastDieNumberOne;
    public int lastDieNumberTwo;

    public bool canShoot;
    public bool canSave;
    public bool canKill;
    public bool hasSave;

    //游戏判定列表
    private List<int> judgeList = new List<int>();

    //初始化方法
    public void InitMessage()
    {
        deadPlayerNum.Clear();
        wolves = new int[4];
        villagers = new int[4];
        defender = 0;
        hunter = 0;
        prophet = 0;
        witch = 0;
        canShoot = true;
        canSave = true;
        canKill = true;
        InitAction();
    }

    public void InitAction()
    {
        hasSave = false;
        wolfKillNumber = 0;
        witchKillNumber = 0;
        defendNumber = 0;
    }


    public DieType JudgementOfDeath()
    {
        //单死
        if (wolfKillNumber != 0 && !hasSave && defendNumber != wolfKillNumber && witchKillNumber == 0)
        {
            lastDieNumberOne = wolfKillNumber;
            return DieType.One;
        }
        else if (wolfKillNumber != 0 && hasSave && defendNumber == wolfKillNumber)
        {
            lastDieNumberOne = wolfKillNumber;
            return DieType.One;
        }
        else if (wolfKillNumber != 0 && witchKillNumber != 0 && defendNumber == wolfKillNumber)
        {
            lastDieNumberOne = witchKillNumber;
            return DieType.One;
        }
        else if (wolfKillNumber == witchKillNumber && witchKillNumber != 0)
        {
            lastDieNumberOne = witchKillNumber;
            return DieType.One;
        }
        else if (wolfKillNumber == 0 && witchKillNumber != 0)
        {
            lastDieNumberOne = witchKillNumber;
            return DieType.One;
        }
        //双死
        else if (wolfKillNumber != 0 && witchKillNumber != 0 && defendNumber != wolfKillNumber)
        {
            //刀前毒后
            lastDieNumberOne = wolfKillNumber;
            lastDieNumberTwo = witchKillNumber;
            //不分刀前毒后
            if (wolfKillNumber > witchKillNumber)
            {
                lastDieNumberOne = witchKillNumber;
                lastDieNumberTwo = wolfKillNumber;
            }
            else
            {
                lastDieNumberTwo = witchKillNumber;
                lastDieNumberOne = wolfKillNumber;
            }
            return DieType.Two;
        }
        else if (wolfKillNumber != 0 && hasSave && defendNumber != wolfKillNumber)
        {
            return DieType.Zero;
        }
        else
        {
            return DieType.Zero;
        }
    }

    public GameJudgementState GameJudgement()
    {
        int num = 0;
        for (int i = 0; i < deadPlayerNum.Count; i++)
        {
            judgeList.Add(deadPlayerNum[i]);
        }

        List<int> removeList = new List<int>();

        //狼人是否团灭
        for (int i = 0; i < wolves.Length; i++)
        {
            for (int j = 0; j < judgeList.Count; j++)
            {
                if (judgeList[j]==wolves[i])
                {
                    num++;
                    removeList.Add(judgeList[j]);
                }
            }
        }

        for (int i = 0; i < removeList.Count; i++)
        {
            judgeList.Remove(removeList[i]);
        }

        if (num==4)
        {
            return GameJudgementState.VillagerWin;
        }

        num = 0;
        removeList.Clear();

        //村民是否团灭
        for (int i = 0; i < villagers.Length; i++)
        {
            for (int j = 0; j < judgeList.Count; j++)
            {
                if (judgeList[j]==villagers[i])
                {
                    num++;
                    removeList.Add(judgeList[j]);
                }
            }
        }

        for (int i = 0; i < removeList.Count; i++)
        {
            judgeList.Remove(removeList[i]);
        }

        if (num==4||judgeList.Count==4)
        {
            return GameJudgementState.WolfWin;
        }

        judgeList.Clear();
        return GameJudgementState.GoOn;
    }
}
