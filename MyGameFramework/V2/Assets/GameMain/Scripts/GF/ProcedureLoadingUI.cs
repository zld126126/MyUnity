using GameFramework.Procedure;
using UnityEngine;
using UnityGameFramework.Runtime;
using ProcedureOwner = GameFramework.Fsm.IFsm<GameFramework.Procedure.IProcedureManager>;

public class ProcedureLoadingUI : ProcedureBase
{
    public void StartLaunch()
    {
        ProcedureOwner procedureOwner = GameEntry.Fsm.GetFsm<GameFramework.Procedure.IProcedureManager>();
        
        procedureOwner.SetData<VarString>("NextScene", "GameLaunch");
        ChangeState<ProcedureChangeScene>(procedureOwner);
    }
}