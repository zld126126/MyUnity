using GameFramework.Procedure;
using UnityGameFramework.Runtime;
using ProcedureOwner = GameFramework.Fsm.IFsm<GameFramework.Procedure.IProcedureManager>;

public class ProcedureGameLaunch : ProcedureBase
{
    public void StartPlay()
    {
        ProcedureOwner procedureOwner = GameEntry.Fsm.GetFsm<GameFramework.Procedure.IProcedureManager>();
        
        procedureOwner.SetData<VarString>("NextScene", "BattleGame");
        ChangeState<ProcedureChangeScene>(procedureOwner);
    }
}