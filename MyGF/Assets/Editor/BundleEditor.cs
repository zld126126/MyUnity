using System.Net;
using Microsoft.VisualBasic;
using System.IO;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

public class BundleEditor
{
    public static string m_BundelTargetPath = Application.streamingAssetsPath;
    public static string ABCONFIGPATH = "Assets/Editor/ABConfig.asset";

    // key-ab包名 value-路径 所有文件夹ab包dic
    public static Dictionary<string, string> m_AllFileDir = new Dictionary<string, string>();

    // 过滤的list
    public static List<string> m_AllFileAB = new List<string>();

    // 单个prefab的ab包
    public static Dictionary<string, List<string>> m_AllPrefabDir = new Dictionary<string, List<string>>();

    [MenuItem("Tools/打包")]
    public static void Build()
    {
        // BuildPipeline.BuildAssetBundles(Application.streamingAssetsPath,
        //     BuildAssetBundleOptions.ChunkBasedCompression, EditorUserBuildSettings.activeBuildTarget);
        // AssetDatabase.Refresh();

        m_AllFileAB.Clear();
        m_AllFileDir.Clear();
        ABConfig abConfig = AssetDatabase.LoadAssetAtPath<ABConfig>(ABCONFIGPATH);

        foreach (ABConfig.FileDirABName fileDir in abConfig.m_AllFileDirAB)
        {
            if (m_AllFileDir.ContainsKey(fileDir.ABName))
            {
                Debug.LogError("AB包配置名字重复,请检查!");
            }
            else
            {
                m_AllFileDir.Add(fileDir.ABName, fileDir.Path);
                m_AllFileAB.Add(fileDir.Path);
            }
        }

        string[] allStr = AssetDatabase.FindAssets("t:Prefab", abConfig.m_AllPrefabPath.ToArray());
        for (int i = 0; i < allStr.Length; i++)
        {
            string path = AssetDatabase.GUIDToAssetPath(allStr[i]);
            EditorUtility.DisplayProgressBar("查找Prefab", "Prefab:" + path, i * 1.0f / allStr.Length);

            if (!ContainsAllFileAB(path))
            {
                GameObject obj = AssetDatabase.LoadAssetAtPath<GameObject>(path);
                string[] allDepend = AssetDatabase.GetDependencies(path);
                List<string> allDependPath = new List<string>();
                for (int j = 0; j < allDepend.Length; j++)
                {
                    if (ContainsAllFileAB(allDepend[j]))
                    {
                        continue;
                    }

                    if (allDepend[j].EndsWith(".cs"))
                    {
                        continue;
                    }

                    m_AllFileAB.Add(allDepend[j]);
                    allDependPath.Add(allDepend[j]);
                }

                if (m_AllFileDir.ContainsKey(obj.name))
                {
                    Debug.LogError("存在相同名字的Prefab! 名字:" + obj.name);
                }
                else
                {
                    m_AllPrefabDir.Add(obj.name, allDependPath);
                }
            }
        }

        foreach (string name in m_AllFileDir.Keys)
        {
            SetABName(name, m_AllFileDir[name]);
        }

        foreach (string name in m_AllPrefabDir.Keys)
        {
            SetABName(name, m_AllPrefabDir[name]);
        }

        // 刷新编辑器
        // AssetDatabase.SaveAssets();
        // AssetDatabase.Refresh();

        BuildAssetBundle();

        // 恢复ab包设置
        string[] oldABNames = AssetDatabase.GetAllAssetBundleNames();
        for (int i = 0; i < oldABNames.Length; i++)
        {
            AssetDatabase.RemoveAssetBundleName(oldABNames[i], true);
            EditorUtility.DisplayProgressBar("清除AB包名", "名字:" + oldABNames[i], i * 1.0f / oldABNames.Length);
        }

        EditorUtility.ClearProgressBar();
    }

    static void SetABName(string name, string path)
    {
        AssetImporter assetImporter = AssetImporter.GetAtPath(path);
        if (assetImporter == null)
        {
            Debug.LogError("不存在此路径:" + path);
        }
        else
        {
            assetImporter.assetBundleName = name;
        }
    }

    static void SetABName(string name, List<string> paths)
    {
        for (int i = 0; i < paths.Count; i++)
        {
            SetABName(name, paths[i]);
        }
    }

    static void BuildAssetBundle()
    {
        string[] allBundles = AssetDatabase.GetAllAssetBundleNames();
        // key为全路径 value为包名
        Dictionary<string, string> resPathDic = new Dictionary<string, string>();
        for (int i = 0; i < allBundles.Length; i++)
        {
            string[] allBundlePath = AssetDatabase.GetAssetPathsFromAssetBundle(allBundles[i]);
            for (int j = 0; j < allBundlePath.Length; j++)
            {
                Debug.Log("此AB包:" + allBundles[i] + "下面包含的资源文件路径:" + allBundlePath[j]);
                resPathDic.Add(allBundlePath[j], allBundles[i]);
            }
        }

        // 生成自己的配置表
        DeleteAB();
        WriteData(resPathDic);

        BuildPipeline.BuildAssetBundles(m_BundelTargetPath,
            BuildAssetBundleOptions.ChunkBasedCompression, EditorUserBuildSettings.activeBuildTarget);
    }

    static void WriteData(Dictionary<string, string> resPathDic)
    {
        AssetBundleConfig config = new AssetBundleConfig();
        config.ABList = new List<ABBase>();
        foreach (string path in resPathDic.Keys)
        {
             
        }
    }

    /// <summary>
    /// 删除无用ab包
    /// </summary>
    static void DeleteAB()
    {
        string[] allBundlesName = AssetDatabase.GetAllAssetBundleNames();
        DirectoryInfo dir = new DirectoryInfo(m_BundelTargetPath);
        FileInfo[] files = dir.GetFiles("*", SearchOption.AllDirectories);
        for (int i = 0; i < files.Length; i++)
        {
            if (ContainsABName(files[i].Name, allBundlesName) || files[i].Name.EndsWith(".meta"))
            {
                continue;
            }
            else
            {
                Debug.Log("此AB包已经被删除或者改名了:" + files[i].Name);
                if (File.Exists(files[i].FullName))
                {
                    File.Delete(files[i].FullName);
                }
            }
        }
    }

    /// <summary>
    /// 遍历文件夹中的文件名与设置的所有AB包进行检查判断 
    /// </summary>
    /// <param name="name"></param>
    /// <param name="strs"></param>
    /// <returns></returns>
    static bool ContainsABName(string name, string[] strs)
    {
        for (int i = 0; i < strs.Length; i++)
        {
            if (name == strs[i])
            {
                return true;
            }
        }
        return false;
    }

    /// <summary>
    /// 是否包含在已经有的AB包中,用来做AB包剔除
    /// </summary>
    /// <param name="path"></param>
    /// <returns></returns>
    static bool ContainsAllFileAB(string path)
    {
        for (int i = 0; i < m_AllFileAB.Count; i++)
        {
            if (path == m_AllFileAB[i] || path.Contains(m_AllFileAB[i]))
            {
                return true;
            }
        }
        return false;
    }
}
