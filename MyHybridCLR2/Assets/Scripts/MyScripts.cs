using System;
using System.Linq;
using System.Reflection;
using UnityEngine;

public class MyScripts : MonoBehaviour
{
    private void Awake()
    {
        LoadDll();
    }

    // Start is called before the first frame update
    void Start()
    {
        Debug.Log("Hello!");
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void LoadDll(){
        // 从 Resources 加载 .bytes 文件中的字节数组
        byte[] bytes = Resources.Load<TextAsset>("ScriptsHotfix.dll").bytes;
        Assembly assembly = Assembly.Load(bytes);

        Assembly[] assemblies = AppDomain.CurrentDomain.GetAssemblies();
        Assembly ass = AppDomain.CurrentDomain.GetAssemblies().First(assembly => assembly.GetName().Name == "ScriptsHotfix");
        // 通过反射加载 DLL
        Type type = ass.GetType("MyHotfix");
        MethodInfo method = type.GetMethod("Version");
        int version = (int)method.Invoke(null, null);
        Debug.Log(version);
    }
}
