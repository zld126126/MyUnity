using GameFramework.Event;
using GameFramework.Procedure;
using UnityGameFramework.Runtime;
using GameFramework.Fsm;
using UnityEngine;

public class ProcedureHotFix : ProcedureBase
{
    /// <summary>
    /// 全部的预加载热更脚本dll
    /// </summary>
    public static readonly string[] hotfixDlls =
    {
#if !DISABLE_HYBRIDCLR
        "HotFix.dll"
#endif
    };

    protected override void OnEnter(IFsm<IProcedureManager> procedureOwner)
    {
        base.OnEnter(procedureOwner);
        MyGameEntry.Event.Subscribe(HotFixEventArgs.EventId, OnLoadHotfixDllCallback);

        procedureOwner.SetData<VarBoolean>("HotFix", false);
        // 注意：使用单机模式并初始化资源前，需要先构建 AssetBundle 并复制到 StreamingAssets 中，否则会产生 HTTP 404 错误
        MyGameEntry.Resource.InitResources(OnInitResourcesComplete);
    }


    protected override void OnLeave(IFsm<IProcedureManager> procedureOwner, bool isShutdown)
    {
        MyGameEntry.Event.Unsubscribe(HotFixEventArgs.EventId, OnLoadHotfixDllCallback);
        base.OnLeave(procedureOwner, isShutdown);
    }


    protected override void OnUpdate(IFsm<IProcedureManager> procedureOwner, float elapseSeconds,
        float realElapseSeconds)
    {
        base.OnUpdate(procedureOwner, elapseSeconds, realElapseSeconds);

        if (procedureOwner.GetData<VarBoolean>("HotFix"))
        {
            //加载热更新Dll完成,进入热更逻辑
            Debug.Log("热更dll加载完成, 开始进入HotFixEntry");
#if !DISABLE_HYBRIDCLR
            var hotfixDll = MyGameEntry.HotFix.GetHotfixClass("HotFixEntry");
            if (hotfixDll == null)
            {
                Debug.LogError("获取热更入口类HotfixEntry失败!");
                return;
            }

            hotfixDll.GetMethod("StartHotFixLogic").Invoke(null, new object[] {true});
#else
            HotFixEntry.StartHotFixLogic(false);
#endif
        }
    }

    /// <summary>
    /// 加载热更新dll
    /// </summary>
    private void PreloadAndInitData()
    {
#if !DISABLE_HYBRIDCLR
        LoadHotfixDlls();
#endif
    }

    private void LoadHotfixDlls()
    {
        Debug.Log("开始加载热更新dll");
        foreach (var dll in hotfixDlls)
        {
            var assetName = AssetUtility.GetHotfixDll(dll);
            MyGameEntry.HotFix.LoadHotfixDll(assetName, this);
        }
    }
    
    private void OnLoadHotfixDllCallback(object sender, GameEventArgs e)
    {
        var args = e as HotFixEventArgs;
        if (args.UserData != this)
        {
            return;
        }

        if (args.Assembly == null)
        {
            Log.Error("加载dll失败:{0}", args.DllName);
            return;
        }
    }

    private void OnInitResourcesComplete()
    {
        Debug.LogError("Init resources complete.");
        PreloadAndInitData();
    }
}