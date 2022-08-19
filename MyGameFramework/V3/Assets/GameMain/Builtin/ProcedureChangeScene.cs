using System;
using GameFramework.Event;
using GameFramework.Procedure;
using UnityGameFramework.Runtime;
using ProcedureOwner = GameFramework.Fsm.IFsm<GameFramework.Procedure.IProcedureManager>;

public class ProcedureChangeScene : ProcedureBase
{
    private bool m_IsChangeSceneComplete = false;

    protected override void OnEnter(ProcedureOwner procedureOwner)
    {
        base.OnEnter(procedureOwner);

        m_IsChangeSceneComplete = false;

        MyGameEntry.Event.Subscribe(LoadSceneSuccessEventArgs.EventId, OnLoadSceneSuccess);

        // 停止所有声音
        MyGameEntry.Sound.StopAllLoadingSounds();
        MyGameEntry.Sound.StopAllLoadedSounds();

        // 隐藏所有实体
        MyGameEntry.Entity.HideAllLoadingEntities();
        MyGameEntry.Entity.HideAllLoadedEntities();

        // 卸载所有场景
        string[] loadedSceneAssetNames = MyGameEntry.Scene.GetLoadedSceneAssetNames();
        for (int i = 0; i < loadedSceneAssetNames.Length; i++)
        {
            MyGameEntry.Scene.UnloadScene(loadedSceneAssetNames[i]);
        }

        // 还原游戏速度
        MyGameEntry.Base.ResetNormalGameSpeed();

        string nextScene = procedureOwner.GetData<VarString>("NextScene");
        if (!String.IsNullOrEmpty(nextScene))
        {
            MyGameEntry.Scene.LoadScene(AssetUtility.GetSceneAsset(nextScene));
        }
    }

    protected override void OnLeave(ProcedureOwner procedureOwner, bool isShutdown)
    {
        MyGameEntry.Event.Unsubscribe(LoadSceneSuccessEventArgs.EventId, OnLoadSceneSuccess);

        base.OnLeave(procedureOwner, isShutdown);
    }

    protected override void OnUpdate(ProcedureOwner procedureOwner, float elapseSeconds, float realElapseSeconds)
    {
        base.OnUpdate(procedureOwner, elapseSeconds, realElapseSeconds);

        if (!m_IsChangeSceneComplete)
        {
            return;
        }

        string nextScene = procedureOwner.GetData<VarString>("NextScene");
        if (!String.IsNullOrEmpty(nextScene))
        {
            switch (nextScene)
            {
                case "GameLaunch":
                    //ChangeState<ProcedureGameLaunch>(procedureOwner);
                    break;
                case "BattleGame":
                    //ChangeState<ProcedureBattleGame>(procedureOwner);
                    break;
                case "BattleClear":
                    //ChangeState<ProcedureBattleClear>(procedureOwner);
                    break;
                case "LoadingUI":
                    //ChangeState<ProcedureLoadingUI>(procedureOwner);
                    break;
                default:
                    //ChangeState<ProcedureGameLaunch>(procedureOwner);
                    break;
            }
        }
    }

    private void OnLoadSceneSuccess(object sender, GameEventArgs e)
    {
        m_IsChangeSceneComplete = true;
    }
}