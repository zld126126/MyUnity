using System.Collections;
using System.Collections.Generic;
using UnityEngine;
//小战斗AI
public class NPCAI
{
    private NpcItem item;
    //AI 准确点中苍蝇概率 值越大说明 越精准
    private float sum = 1000;
    private float maxPro = 800;
    private float minPro = 200;
    private float catPro = 0;
    //AI 点击屏幕间隔时间 值越大说明 反应越慢
    private float maxTime = 0.5f;
    private float minTime = 0.2f;

    private float curTime = 0;

    //计时
    private float _time = 0;
    //开关
    private bool isOpen = false;

    public float pro = 0;
    // Start is called before the first frame update
    public void Init(NpcItem itm)
    {
        item = itm;
        int seed = (int)System.DateTime.Now.Ticks;
        Random.InitState(seed);
        catPro = Random.Range(minPro, maxPro);
        curTime = Random.Range(minTime, maxTime);
        pro = catPro/sum;
        isOpen = true;
    }

    // Update is called once per frame
    public void Refresh()
    {
         _time += Time.deltaTime;
         if (_time >= curTime&&isOpen)
        {
            _time = 0;
            item.ClickFly();
        }
    }
    
    public void Clear()
    {
        isOpen = false;
    }

}
