using GameFramework.Procedure;
using UnityEngine;
using UnityGameFramework.Runtime;
using ProcedureOwner = GameFramework.Fsm.IFsm<GameFramework.Procedure.IProcedureManager>;

public class ProcedureBattleGame : ProcedureBase
{
    public void BattleClear()
    {
        ProcedureOwner procedureOwner = GameEntry.Fsm.GetFsm<GameFramework.Procedure.IProcedureManager>();
        
        procedureOwner.SetData<VarString>("NextScene", "BattleClear");
        ChangeState<ProcedureChangeScene>(procedureOwner);
    }
}