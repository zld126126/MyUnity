using System;
using System.Collections.Generic;
using System.IO;
using UnityEditor;
using UnityEngine;

namespace MySDK_Admob
{
    /// <summary>
    /// SDKSETTING 辅助
    /// </summary>
    public static class SDKSettingHelper
    {
        private const string FolderPath = "Assets/Resources";

        private const string FileName = "AdmobAsset";

        public static string GetFilePath()
        {
            return string.Format("{0}/{1}.asset", FolderPath, FileName);
        }

        public static string GetFileName()
        {
            return FileName;
        }

        public static string GetFolderPath() {
            return FolderPath;
        }
    }

    /// <summary>
    /// SDK Settings 配置
    /// </summary>
    public class SDKSettings : Singleton<SDKSettings>
    {
        private List<AdmobConfig> configs = new List<AdmobConfig>();
        private AdmobAsset _config = null;
        private List<string> testDevices = new List<string>();

        /// <summary>
        /// Asset设置
        /// </summary>
        private void SetConfig()
        {
            if (_config != null)
            {
                if (_config.Andriod_Banner != null)
                {
                    configs.Add(_config.Andriod_Banner);
                }

                if (_config.Andriod_Interstitial != null)
                {
                    configs.Add(_config.Andriod_Interstitial);
                }

                if (_config.Andriod_Rewarded != null)
                {
                    configs.Add(_config.Andriod_Rewarded);
                }

                if (_config.IOS_Banner != null)
                {
                    configs.Add(_config.IOS_Banner);
                }

                if (_config.IOS_Interstitial != null)
                {
                    configs.Add(_config.IOS_Interstitial);
                }

                if (_config.IOS_Rewarded != null)
                {
                    configs.Add(_config.IOS_Rewarded);
                }

                if (_config.testDevices.Count > 0)
                {
                    testDevices = _config.testDevices;
                }

                Debug.Log("admob config finish : group length == " + configs.Count);
            }
        }

        /// <summary>
        /// SDKSettings 初始化方法
        /// </summary>
        public void Setup()
        {
            _config = Resources.Load(SDKSettingHelper.GetFileName()) as AdmobAsset;
            if (_config == null)
            {
                Debug.LogError("sdk settings not found && create default");
                //SDKSettingHelper.CreateAsset();
                //_config = Resources.Load(SDKSettingHelper.GetFileName()) as SDKConfigAsset;
            }

            SetConfig();
        }

        /// <summary>
        /// 获取测试设备
        /// </summary>
        /// <returns></returns>
        public List<string> GetTestDevices()
        {
            return testDevices;
        }

        /// <summary>
        /// 获取AdUnitId
        /// </summary>
        /// <param name="type">类型</param>
        /// <returns></returns>
        public string GetAdUnitId(AdmobType type)
        {
            // 区分平台
#if UNITY_ANDROID
            AdmobPlatform platform = AdmobPlatform.Andriod;
#elif UNITY_IPHONE
            AdmobPlatform platform = AdmobPlatform.IOS;
#else
            AdmobPlatform platform = AdmobPlatform.Unexpected;
#endif

            if (configs.Count == 0)
            {
                throw new Exception("admob config group don`t have type == " + type);
            }
            else
            {
                for (int i = 0; i < configs.Count; i++)
                {
                    AdmobConfig c = configs[i];
                    if (c.Platform == platform && c.Type == type)
                    {
                        if (c.AdUnitId != "")
                        {
                            Debug.Log("admob AdUnitId get success == " + c.AdUnitId);
                            return c.AdUnitId;
                        }
                        throw new Exception("admob config group don`t have type == " + type + " and platform == " + platform);
                    }
                }
            }

            throw new Exception("admob config group don`t have type == " + type + " and platform == " + platform);
        }

        public override void Dispose() { }
    }
}


