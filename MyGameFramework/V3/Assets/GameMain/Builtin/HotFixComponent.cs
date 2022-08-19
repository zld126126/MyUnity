using System.Collections.Generic;
using UnityEngine;
using GameFramework;
using UnityGameFramework.Runtime;
using System;
using GameFramework.Resource;
using ProcedureOwner = GameFramework.Fsm.IFsm<GameFramework.Procedure.IProcedureManager>;

public class HotFixComponent : GameFrameworkComponent
{
    private List<System.Reflection.Assembly> mHotfixAssemblyList;
    public List<System.Reflection.Assembly> HotfixAssemblyList => mHotfixAssemblyList;

    protected override void Awake()
    {
        base.Awake();
        mHotfixAssemblyList = new List<System.Reflection.Assembly>();
    }

    /// <summary>
    /// 加载热更文件
    /// </summary>
    /// <param name="dllAssetName"></param>
    /// <param name="userData"></param>
    public void LoadHotfixDll(string dllAssetName, object userData)
    {
        MyGameEntry.Resource.LoadAsset(dllAssetName, typeof(TextAsset),
            new LoadAssetCallbacks(OnLoadDllSuccess, OnLoadDllFail), userData);
    }

    /// <summary>
    /// 加载并初始化元数据
    /// </summary>
    /// <param name="dllAssetName"></param>
    /// <param name="loadCallback"></param>
    public void LoadMetadataForAOTAssembly(string dllAssetName, GameFrameworkAction<string, byte[]> loadCallback)
    {
        MyGameEntry.Resource.LoadAsset(dllAssetName, new LoadAssetCallbacks((assetName, asset, duration, userData) =>
        {
            var textAsset = asset as TextAsset;
            if (textAsset == null) loadCallback.Invoke(dllAssetName, null);
            else
            {
                LoadMetadataForAOTAssembly(dllAssetName, textAsset.bytes);
                loadCallback.Invoke(dllAssetName, textAsset.bytes);
            }
        }, (assetName, status, errorMessage, userData) => { loadCallback.Invoke(dllAssetName, null); }));
    }

    private void OnLoadDllFail(string assetName, LoadResourceStatus status, string errorMessage, object userData)
    {
        Debug.LogErrorFormat("加载{0}失败! Error:{1}", assetName, errorMessage);
    }

    private void OnLoadDllSuccess(string assetName, object asset, float duration, object userData)
    {
        Debug.LogErrorFormat("加载{0}成功!", assetName);
        
        var dllTextAsset = asset as TextAsset;
        System.Reflection.Assembly dllAssembly = null;
        if (dllTextAsset != null)
        {
            try
            {
                dllAssembly = System.Reflection.Assembly.Load(dllTextAsset.bytes);
                mHotfixAssemblyList.Add(dllAssembly);
                ProcedureOwner procedureOwner = MyGameEntry.Fsm.GetFsm<GameFramework.Procedure.IProcedureManager>();
                procedureOwner.SetData<VarBoolean>("HotFix",true);
            }
            catch (Exception e)
            {
                Log.Error("Assembly.Load加载热更dll失败:{0},Error:{1}", assetName, e.Message);
                throw;
            }
        }
    }

    /// <summary>
    /// 从热更程序集中获取类
    /// </summary>
    /// <param name="className"></param>
    /// <returns></returns>
    public Type GetHotfixClass(string className)
    {
        var hotfixDll = GetHotfixAssembly("HotFix");
        if (hotfixDll == null)
        {
            Log.Error("GetHotfixAssembly HotFix failed");
            return null;
        }

        return hotfixDll.GetType(className, true);
    }

    /// <summary>
    /// 获取热更程序集
    /// </summary>
    /// <param name="dllName"></param>
    /// <returns></returns>
    public System.Reflection.Assembly GetHotfixAssembly(string dllName)
    {
        System.Reflection.Assembly result = null;
// #if UNITY_EDITOR
//         result = AppDomain.CurrentDomain.GetAssemblies()
//             .First(assembly => assembly.GetName().Name.CompareTo(dllName) == 0);
//
// #else
//         foreach (var item in mHotfixAssemblyList)
//         {
//             if (item.GetName().Name.CompareTo(dllName) == 0)
//             {
//                 result = item;
//                 break;
//             }
//         }
// #endif
        foreach (var item in mHotfixAssemblyList)
        {
            if (item.GetName().Name.CompareTo(dllName) == 0)
            {
                result = item;
                break;
            }
        }
        return result;
    }

    /// <summary>
    /// 为aot assembly加载原始metadata， 这个代码放aot或者热更新都行。
    /// 一旦加载后，如果AOT泛型函数对应native实现不存在，则自动替换为解释模式执行
    /// </summary>
    private unsafe void LoadMetadataForAOTAssembly(string dllName, byte[] dllBytes)
    {
        // 可以加载任意aot assembly的对应的dll。但要求dll必须与unity build过程中生成的裁剪后的dll一致，而不能直接使用原始dll。
        // 我们在BuildProcessor_xxx里添加了处理代码，这些裁剪后的dll在打包时自动被复制到 {项目目录}/HybridCLRData/AssembliesPostIl2CppStrip/{Target} 目录。
        // 注意，补充元数据是给AOT dll补充元数据，而不是给热更新dll补充元数据。
        // 热更新dll不缺元数据，不需要补充，如果调用LoadMetadataForAOTAssembly会返回错误

        fixed (byte* ptr = dllBytes)
        {
            // 加载assembly对应的dll，会自动为它hook。一旦aot泛型函数的native函数不存在，用解释器版本代码
            try
            {
                int err = HybridCLR.RuntimeApi.LoadMetadataForAOTAssembly((IntPtr) ptr, dllBytes.Length);
                Log.Info("LoadMetadataForAOTAssembly:{0}. ret:{1}", dllName, err);
            }
            catch (Exception e)
            {
                Log.Error("LoadMetadataForAOTAssembly失败:{0}", e.Message);
                throw;
            }
        }
    }
}