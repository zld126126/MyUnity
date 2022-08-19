using GameFramework;
using GameFramework.Fsm;
using GameFramework.Procedure;
using UnityEngine;
using UnityGameFramework.Runtime;

public class HotFixEntry
{
    public static void StartHotFixLogic(bool enableHotfix)
    {
        Debug.LogErrorFormat("HotFix Enable:{0}--dongtech", enableHotfix);
        MyGameEntry.Fsm.DestroyFsm<IProcedureManager>();
        var fsmManager = GameFrameworkEntry.GetModule<IFsmManager>();
        var procManager = GameFrameworkEntry.GetModule<IProcedureManager>();
        //手动把热更新程序集的流程添加进来
        ProcedureBase[] procedures = new ProcedureBase[]
        {
            new ProcedureLaunch(),
            new ProcedureStartGame()
        };
        procManager.Initialize(fsmManager, procedures);
        procManager.StartProcedure<ProcedureStartGame>();
    }
}