using System.IO;
using UnityEditor;
using UnityEngine;

/// <summary>
/// 创建SDK-ASSET
/// </summary>
namespace MyAsset
{

    public class MyAssetEditor : UnityEditor.Editor
    {
        [MenuItem("MyAsset/CreateAsset")]
        static void Create()
        {
            CreateAsset();
        }

        /// <summary>
        /// 创建Asset
        /// </summary>
        public static void CreateAsset()
        {
            // 判断目录是否存在
            if (!Directory.Exists(MyAssetHelper.GetFolderPath()))
            {
                Directory.CreateDirectory(MyAssetHelper.GetFolderPath());
            }

            // 创建.asset文件
            MyAsset _asset = MyAsset.CreateInstance<MyAsset>();
            AssetDatabase.CreateAsset(_asset, MyAssetHelper.GetFilePath());
            AssetDatabase.SaveAssets();
            AssetDatabase.Refresh();
            Debug.Log("Asset create success");
        }
    }
}
