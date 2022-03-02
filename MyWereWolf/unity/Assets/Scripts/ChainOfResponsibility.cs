using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChainOfResponsibility : MonoBehaviour {

	// Use this for initialization
	void Start () {
        Debug.Log("前边有一个很漂亮的小姐姐，我们去撩一下");
        GrilType grilType = GrilType.ShaoNv;
        BaseHandler handlerA = new HandleAYi();
        BaseHandler handlerB = new HandleLuoLi();
        BaseHandler handlerC = new HandleShaoNv();
        //handlerA.NextHandler = handlerB;
        //handlerB.NextHandler = handlerC;

        handlerA.SetNextHandler(handlerB).SetNextHandler(handlerC).SetNextHandler(handlerA);

        handlerC.Handle(grilType);
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}

public enum GrilType
{
    LuoLi,
    ShaoNv,
    YuJie,
    AYi
}

public abstract class BaseHandler
{
    protected BaseHandler nextHandler = null;
    public BaseHandler NextHandler
    {
        set { nextHandler = value; }
    }

    public BaseHandler SetNextHandler(BaseHandler baseHandler)
    {
        nextHandler = baseHandler;
        return nextHandler;
    }

    public virtual void Handle(GrilType grilType) { }
}

class HandleAYi : BaseHandler
{
    public override void Handle(GrilType grilType)
    {
        if (grilType==GrilType.AYi)
        {
            Debug.Log("阿姨，您长的真漂酿，看着真年轻!");
            Debug.Log("呦,小伙子真会讲大实话");
        }
        else
        {
            if (nextHandler!=null)
            {
                nextHandler.Handle(grilType);
            }
        }
    }
}

class HandleLuoLi : BaseHandler
{
    public override void Handle(GrilType grilType)
    {
        if (grilType == GrilType.LuoLi)
        {
            Debug.Log("小朋友长的真可爱，跟叔叔走，叔叔给你买糖吃");
            Debug.Log("妈妈说:不能跟陌生的叔叔走，尤其是怪叔叔");
        }
        else
        {
            if (nextHandler != null)
            {
                nextHandler.Handle(grilType);
            }
        }
    }
}

class HandleShaoNv : BaseHandler
{
    public override void Handle(GrilType grilType)
    {
        if (grilType == GrilType.ShaoNv)
        {
            Debug.Log("小姐姐你有打火机吗");
            Debug.Log("没有");
            Debug.Log("那你是用什么点燃我的心");
        }
        else
        {
            if (nextHandler != null)
            {
                nextHandler.Handle(grilType);
            }
        }
    }
}

