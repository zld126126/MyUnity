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
        // �� Resources ���� .bytes �ļ��е��ֽ�����
        byte[] bytes = Resources.Load<TextAsset>("ScriptsHotfix.dll").bytes;
        Assembly assembly = Assembly.Load(bytes);

        Assembly[] assemblies = AppDomain.CurrentDomain.GetAssemblies();
        Assembly ass = AppDomain.CurrentDomain.GetAssemblies().First(assembly => assembly.GetName().Name == "ScriptsHotfix");
        // ͨ��������� DLL
        Type type = ass.GetType("MyHotfix");
        MethodInfo method = type.GetMethod("Version");
        int version = (int)method.Invoke(null, null);
        Debug.Log(version);
    }
}
