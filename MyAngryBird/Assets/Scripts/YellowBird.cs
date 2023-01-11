using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class YellowBird : Bird {

    /// <summary>
    /// 重写方法
    /// </summary>
    public override void ShowSkill()
    {
        base.ShowSkill();
        rg.velocity *= 2;
    }

}
