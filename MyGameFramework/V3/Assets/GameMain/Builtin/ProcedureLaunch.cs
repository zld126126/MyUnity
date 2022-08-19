using GameFramework.Procedure;
using ProcedureOwner = GameFramework.Fsm.IFsm<GameFramework.Procedure.IProcedureManager>;

public class ProcedureLaunch : ProcedureBase
{
    protected override void OnEnter(ProcedureOwner procedureOwner)
    {
        base.OnEnter(procedureOwner);
    }

    protected override void OnUpdate(ProcedureOwner procedureOwner, float elapseSeconds, float realElapseSeconds)
    {
        base.OnUpdate(procedureOwner, elapseSeconds, realElapseSeconds);
        //ChangeState(procedureOwner, MyGameEntry.Base.EditorResourceMode ? typeof(ProcedureHotFix) : typeof(ProcedureStartGame));
        ChangeState<ProcedureHotFix>(procedureOwner);
    }
}