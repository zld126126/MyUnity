using GameFramework.Procedure;
using UnityGameFramework.Runtime;
using ProcedureOwner = GameFramework.Fsm.IFsm<GameFramework.Procedure.IProcedureManager>;

public class ProcedureStartGame : ProcedureBase
{
    private bool m_InitResourcesComplete = false;
    
    protected override void OnEnter(ProcedureOwner procedureOwner)
    {
        base.OnEnter(procedureOwner);
        
        m_InitResourcesComplete = false;
        
        // 注意：使用单机模式并初始化资源前，需要先构建 AssetBundle 并复制到 StreamingAssets 中，否则会产生 HTTP 404 错误
        GameEntry.Resource.InitResources(OnInitResourcesComplete);
    }

    protected override void OnUpdate(ProcedureOwner procedureOwner, float elapseSeconds, float realElapseSeconds)
    {
        base.OnUpdate(procedureOwner, elapseSeconds, realElapseSeconds);
        
        if (!m_InitResourcesComplete)
        {
            // 初始化资源未完成则继续等待
            return;
        }
        procedureOwner.SetData<VarString>("NextScene", "LoadingUI");
        ChangeState<ProcedureChangeScene>(procedureOwner);
    }
    
    private void OnInitResourcesComplete()
    {
        m_InitResourcesComplete = true;
        AudioManager.Instance.Init();
        Log.Info("Init resources complete.");
    }
}