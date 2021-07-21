using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using XLua;

public class LoadLuaScript : MonoBehaviour
{
    LuaEnv luaenv = null;
    // Start is called before the first frame update
    void Start()
    {
        // 初始化一个xlua实例
        luaenv = new LuaEnv();
        // 调用 MyXlua.lua.txt
        // 使用unity资源加载
        TextAsset ta = Resources.Load<TextAsset>("LoadLuaScript.lua");
        luaenv.DoString(ta.text);
        // 使用xlua 内置方法require加载
        //luaenv.DoString("require 'LoadLuaScript'");

        // xlua 简单打印方法print
        luaenv.DoString("print('LoadLuaScript Call Success')");

        // 调用自定义Loader
        luaenv.AddLoader((ref string filename) =>
        {
            // 自定义loader xlua
            if (filename == "InMemory")
            {
                string script = "return {ccc = 9999}";
                return System.Text.Encoding.UTF8.GetBytes(script);
            }
            return null;
        });

        luaenv.DoString("print('InMemory.ccc=', require('InMemory').ccc)");
    }

    // Update is called once per frame
    void Update()
    {
        if (luaenv != null)
        {
            luaenv.Tick();
        }
    }

    void OnDestroy()
    {
        // 销毁xlua
        luaenv.Dispose();
    }
}
