using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Text.RegularExpressions;

public enum ChangeType
{
    Linear, //线性
    Easein, //由慢到快  
    Easeout, //由快到慢
}
public abstract class ChangeTypeBase
{
    protected int startNum;
    protected int targetNum;

    protected float duration;

    public ChangeTypeBase(int startNum, int targetNum, float duration)
    {
        this.startNum = startNum;
        this.targetNum = targetNum;
        this.duration = duration;
    }
    public abstract int ChangeText(float time);
}
public class LinearType : ChangeTypeBase
{
    public LinearType(int startNum, int targetNum, float duration) : base(startNum, targetNum, duration)
    {

    }
    public override int ChangeText(float time)
    {
        return (int)((targetNum - startNum) * (time / duration));
    }
}
public class EaseInType:ChangeTypeBase
{
    public EaseInType(int startNum, int targetNum, float duration) : base(startNum, targetNum, duration)
    {

    }
    public override int ChangeText(float time)
    {
        return (int)((targetNum - startNum) * (time / duration)* (time / duration));
    }
}
public class EaseoutType:ChangeTypeBase
{
    public EaseoutType(int startNum, int targetNum, float duration) : base(startNum, targetNum, duration)
    {

    }
    public override int ChangeText(float time)
    {
        return (int)((targetNum - startNum) * Mathf.Sin(Mathf.PI/2 * (time / duration)));
    }
}
