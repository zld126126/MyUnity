using GameFramework.Event;
using UnityEngine;
using UnityGameFramework.Runtime;

public class AAA : EntityLogic
{
    protected override void OnShow(object userData)
    {
        string aa = (string) userData;
        Debug.Log(aa);
        base.OnShow(userData);
        GameEntry.Event.Subscribe(ResourceApplyFailureEventArgs.EventId, AAAA);
    }

    private void AAAA<TEventArgs>(object sender, TEventArgs e)
    {
    }

    protected override void OnHide(bool isShutdown, object userData)
    {
        base.OnHide(isShutdown, userData);
        GameEntry.Event.Unsubscribe(ResourceApplyFailureEventArgs.EventId, AAAA);
    }
}