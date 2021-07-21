using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using XLua;
using System;

public class CsCallLua : MonoBehaviour
{
    LuaEnv luaenv = null;
    string script = "";

    #region 官方例子
    public class DClass
    {
        public int f1;
        public int f2;
    }

    [CSharpCallLua]
    public interface ItfD
    {
        int f1 { get; set; }
        int f2 { get; set; }
        int add(int a, int b);
    }

    [CSharpCallLua]
    public delegate int FDelegate(int a, string b, out DClass c);

    [CSharpCallLua]
    public delegate Action GetE();

    public void OfficalExample()
    {
        script = @"
        a = 1
        b = 'hello world'
        c = true

        d = {
           f1 = 12, f2 = 34, 
           1, 2, 3,
           add = function(self, a, b) 
              print('d.add called')
              return a + b 
           end
        }

        function e()
            print('i am e')
        end

        function f(a, b)
            print('a', a, 'b', b)
            return 1, {f1 = 1024}
        end
        
        function ret_e()
            print('ret_e called')
            return e
        end
    ";

        luaenv = new LuaEnv();
        luaenv.DoString(script);

        Debug.Log("_G.a = " + luaenv.Global.Get<int>("a"));
        Debug.Log("_G.b = " + luaenv.Global.Get<string>("b"));
        Debug.Log("_G.c = " + luaenv.Global.Get<bool>("c"));


        DClass d = luaenv.Global.Get<DClass>("d");//映射到有对应字段的class，by value
        Debug.Log("_G.d = {f1=" + d.f1 + ", f2=" + d.f2 + "}");

        Dictionary<string, double> d1 = luaenv.Global.Get<Dictionary<string, double>>("d");//映射到Dictionary<string, double>，by value
        Debug.Log("_G.d = {f1=" + d1["f1"] + ", f2=" + d1["f2"] + "}, d.Count=" + d1.Count);

        List<double> d2 = luaenv.Global.Get<List<double>>("d"); //映射到List<double>，by value
        Debug.Log("_G.d.len = " + d2.Count);

        ItfD d3 = luaenv.Global.Get<ItfD>("d"); //映射到interface实例，by ref，这个要求interface加到生成列表，否则会返回null，建议用法
        d3.f2 = 1000;
        Debug.Log("_G.d = {f1=" + d3.f1 + ", f2=" + d3.f2 + "}");
        Debug.Log("_G.d:add(1, 2)=" + d3.add(1, 2));

        LuaTable d4 = luaenv.Global.Get<LuaTable>("d");//映射到LuaTable，by ref
        Debug.Log("_G.d = {f1=" + d4.Get<int>("f1") + ", f2=" + d4.Get<int>("f2") + "}");


        Action e = luaenv.Global.Get<Action>("e");//映射到一个delgate，要求delegate加到生成列表，否则返回null，建议用法
        e();

        FDelegate f = luaenv.Global.Get<FDelegate>("f");
        DClass d_ret;
        int f_ret = f(100, "John", out d_ret);//lua的多返回值映射：从左往右映射到c#的输出参数，输出参数包括返回值，out参数，ref参数
        Debug.Log("ret.d = {f1=" + d_ret.f1 + ", f2=" + d_ret.f2 + "}, ret=" + f_ret);

        GetE ret_e = luaenv.Global.Get<GetE>("ret_e");//delegate可以返回更复杂的类型，甚至是另外一个delegate
        e = ret_e();
        e();

        LuaFunction d_e = luaenv.Global.Get<LuaFunction>("e");
        d_e.Call();
    }
    #endregion

    #region 我的例子
    class Person
    {
        public string name;
        public int age;
    }

    [CSharpCallLua]
    delegate void Add(int a, int b);

    [CSharpCallLua]
    public interface IPerson
    {
        string name { get; set; }
        int age { get; set; }
    }

    public void MyExample() {
        script = @"
        birth = 1226
        desc = 'CsCallLua'
        isNovice = true

        person = {
           name = 'dong', age = 28
        }

        function add(a, b)
            result = a+b
            print(result)
        end
    ";
        luaenv = new LuaEnv();
        luaenv.DoString(script);

        // 访问lua中的全局变量
        Debug.Log("birth = " + luaenv.Global.Get<int>("birth"));
        Debug.Log("desc = " + luaenv.Global.Get<string>("desc"));
        Debug.Log("isNovice = " + luaenv.Global.Get<bool>("isNovice"));

        // C#访问Lua之访问Lua中的table（映射到class）
        Person p = luaenv.Global.Get<Person>("person");
        print(p.name + "-" + p.age);

        // C#访问Lua之访问Lua中的table（映射到interface）
        IPerson ip = luaenv.Global.Get<IPerson>("person");
        print(ip.name);

        // C#访问Lua之通过Dictionary或者List
        List<object> list = luaenv.Global.Get<List<object>>("person");
        foreach (object o in list)
        {
            print(o);
        }
        Dictionary<string, object> dict = luaenv.Global.Get<Dictionary<string, object>>("person");
        foreach (string key in dict.Keys)
        {
            print(key + " " + dict[key]);
        }

        // C#访问Lua之通过LuaTable类 比较慢
        LuaTable luaTable = luaenv.Global.Get<LuaTable>("person");
        print(luaTable.Get<string>("name"));
        print(luaTable.Get<int>("age"));

        // C#访问Lua之通过LuaFunction访问Lua中的全局函数
        Add add = luaenv.Global.Get<Add>("add");
        add(1, 2);

        // C#在Lua中new C#对象（创建游戏物体）
        luaenv.DoString("require 'CsCallLua'");
    }
    #endregion

    // Use this for initialization
    void Start()
    {
        OfficalExample();
        MyExample();
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
        luaenv.Dispose();
    }
}
