using System.IO;
using UnityEditor;
using UnityEngine;

/// <summary>
/// 创建SDK-ASSET
/// </summary>
namespace MySDK_Admob
{
    public class SDKAsset : UnityEditor.Editor
    {
        [MenuItem("MySDK_Admob/CreateAdmobAsset")]
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
            if (!Directory.Exists(SDKSettingHelper.GetFolderPath()))
            {
                Directory.CreateDirectory(SDKSettingHelper.GetFolderPath());
            }

            // 创建.asset文件
            AdmobAsset _asset = AdmobAsset.CreateInstance<AdmobAsset>();
            AssetDatabase.CreateAsset(_asset, SDKSettingHelper.GetFilePath());
            AssetDatabase.SaveAssets();
            AssetDatabase.Refresh();
            Debug.Log("AdmobAsset create success");
        }
    }
}
