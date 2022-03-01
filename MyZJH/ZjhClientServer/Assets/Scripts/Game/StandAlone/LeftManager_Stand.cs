using DG.Tweening;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class LeftManager_Stand : LeftRightBaseManager_Stand
{
    public override void Compare()
    {
        m_ZjhManager.LeftPlayerCompare();
    }
    public override void CompareWin()
    {
        base.CompareWin();
        m_IsStartStakes = false;
        go_CountDown.SetActive(false);
        m_ZjhManager.m_CurrentStakesIndex = 1;
        m_ZjhManager.SetNextPlayerStakes();
        m_IsComparing = false;
    }
    public override bool IsWin()
    {
        if (m_ZjhManager.IsLeftWin())
        {
            //如果左边玩家胜利，调用左边玩家胜利的方法
            m_ZjhManager.LeftWin();
            return true;
        }
        return false;
    }
}
