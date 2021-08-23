using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

// admob 自定义config文件可以按需自由调整
namespace MySDK_Admob
{
    public enum AdmobGroupPlatform
    {
        Unknown, // 错误类型
        Andriod, // 安卓
        IOS, // ios
        Unexpected, // 未知类型
    }

    public enum AdmobGroupType
    {
        Unknown, // 错误类型
        BannerView, // 横幅广告
        InterstitialAd, // 插页式广告
        RewardedAd, // 激励广告
    }

    // 暂定支持平台:Admob，Facebook，unityAds，Ironsource，Applovin
    public class AdmobGroup
    {
        public string AdmobADCompany; //广告中介名称
        public AdmobGroupPlatform Platform; //广告中介支持平台
        public string AdUnitId; // admob-adUnitId
        public AdmobGroupType Type; // 广告中介类型

        public AdmobGroup(string company, AdmobGroupPlatform platform, string adUnitId, AdmobGroupType type)
        {
            this.AdmobADCompany = company;
            this.Platform = platform;
            this.AdUnitId = adUnitId;
            this.Type = type;
        }
    }

    public class AdmobConfig : Singleton<AdmobConfig>
    {
        public Dictionary<AdmobGroupType, AdmobGroup[]> groups = new Dictionary<AdmobGroupType, AdmobGroup[]>();
        public override void Dispose()
        {

        }

        public void SetConfig(Dictionary<AdmobGroupType, AdmobGroup[]> groups) {
            this.groups = groups;
        }

        private void CheckInit() {
            if (this.groups.Count == 0)
            {
                Debug.LogError("admob config group don`t work : admobconfig.groups is empty!");
            }
        }

        // 初始化调用方法
        public void StartUp(Dictionary<AdmobGroupType, AdmobGroup[]> groups)
        {
            this.SetConfig(groups);
            this.CheckInit();
        }

        public string GetAdUnitId(AdmobGroupType type)
        {
            // 区分平台
#if UNITY_ANDROID
            AdmobGroupPlatform platform = AdmobGroupPlatform.Andriod;
#elif UNITY_IPHONE
            AdmobGroupPlatform platform = AdmobGroupPlatform.IOS;
#else
            AdmobGroupPlatform platform = AdmobGroupPlatform.Unexpected;
#endif

            // 根据类型/公司获取
            AdmobGroup[] admobGroup = groups[type];
            if (admobGroup.Length == 0)
            {
                throw new Exception("admob config group don`t have type == " + type);
            }
            else
            {
                for (int i = 0; i < admobGroup.Length; i++)
                {
                    AdmobGroup g = admobGroup[i];
                    if (g.Platform == platform && g.Type == type)
                    {
                        Debug.Log("admob AdUnitId get success == " + g.AdUnitId);
                        return g.AdUnitId;
                    }
                }
            }

            throw new Exception("admob config group don`t have type == " + type + " and platform == " + platform);
        }
    }
}
