using GameFramework.Procedure;
using UnityEngine;
using UnityGameFramework.Runtime;
using ProcedureOwner = GameFramework.Fsm.IFsm<GameFramework.Procedure.IProcedureManager>;

public class ProcedureBattleClear : ProcedureBase
{
    public void Replay()
    {
        ProcedureOwner procedureOwner = GameEntry.Fsm.GetFsm<GameFramework.Procedure.IProcedureManager>();
        
        procedureOwner.SetData<VarString>("NextScene", "BattleGame");
        ChangeState<ProcedureChangeScene>(procedureOwner);
    }
    
    public void GameMenu()
    {
        ProcedureOwner procedureOwner = GameEntry.Fsm.GetFsm<GameFramework.Procedure.IProcedureManager>();
        
        procedureOwner.SetData<VarString>("NextScene", "GameLaunch");
        ChangeState<ProcedureChangeScene>(procedureOwner);
    }
}