using UnityEngine;
using XLua;
using System;

public class LuaPerfectTest_XLua : MonoBehaviour {
    internal static LuaEnv luaEnv = new LuaEnv();

    private LuaTable scriptEnv;

    private Action luaStart;
    private Action luaUpdate;
    private Action luaOnDestroy;

    void Awake()
    {
        scriptEnv = luaEnv.NewTable();

        LuaTable meta = luaEnv.NewTable();
        meta.Set("__index", luaEnv.Global);
        scriptEnv.SetMetaTable(meta);
        meta.Dispose();

        luaEnv.DoString("require 'LuaPerfectTest_XLua'", "LuaBehaviour", scriptEnv);

        luaStart = scriptEnv.Get<Action>("start");
        luaUpdate = scriptEnv.Get<Action>("update");
        luaOnDestroy = scriptEnv.Get<Action>("ondestroy");
    }

    void Start () {
        luaStart();
    }
	
	void Update () {
        luaUpdate();
    }
	
    void OnDestroy() {
        luaOnDestroy();
        scriptEnv.Dispose();
    }
}