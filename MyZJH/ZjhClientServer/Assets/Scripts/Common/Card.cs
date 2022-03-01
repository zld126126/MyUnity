using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Card
{
    /// <summary>
    /// 权值
    /// </summary>
    public int Weight { get; set; }
    /// <summary>
    /// 颜色
    /// </summary>
    public int Color { get; set; }

    public Card(int weight, int color)
    {
        this.Weight = weight;
        this.Color = color;
    }
}
