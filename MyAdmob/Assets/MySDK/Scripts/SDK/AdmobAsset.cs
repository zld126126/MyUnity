using System;
using System.Collections.Generic;
using UnityEngine;

namespace MySDK_Admob
{
    /// <summary>
    /// adUnitId -- 官方提供测试id 替换线上id即可
    /// </summary>
    public class AdmobAsset : ScriptableObject
    {
        [SerializeField]
        public AdmobConfig Andriod_Banner = new AdmobConfig("",AdmobPlatform.Andriod, "ca-app-pub-3940256099942544/6300978111", AdmobType.BannerView);//安卓横幅广告

        [SerializeField]
        public AdmobConfig Andriod_Interstitial = new AdmobConfig("", AdmobPlatform.Andriod, "ca-app-pub-3940256099942544/1033173712", AdmobType.InterstitialAd);//安卓插页广告

        [SerializeField]
        public AdmobConfig Andriod_Rewarded = new AdmobConfig("", AdmobPlatform.Andriod, "ca-app-pub-3940256099942544/5224354917", AdmobType.RewardedAd);//安卓激励广告

        [SerializeField]
        public AdmobConfig IOS_Banner = new AdmobConfig("", AdmobPlatform.IOS, "ca-app-pub-3940256099942544/2934735716", AdmobType.BannerView);//IOS横幅广告

        [SerializeField]
        public AdmobConfig IOS_Interstitial = new AdmobConfig("", AdmobPlatform.IOS, "ca-app-pub-3940256099942544/4411468910", AdmobType.InterstitialAd);//IOS插页广告

        [SerializeField]
        public AdmobConfig IOS_Rewarded = new AdmobConfig("", AdmobPlatform.IOS, "ca-app-pub-3940256099942544/1712485313", AdmobType.RewardedAd);//IOS激励广告

        [SerializeField]
        public List<string> testDevices = new List<string>(); // 测试设备ID IDFA举例:4EB1000D0350CEB429EDF581F975B45E 或者 CE56E5DDD15A526E9313E8AA42CDF257 ...
    }

    [Serializable]
    public enum AdmobPlatform
    {
        Unknown, // 错误类型
        Andriod, // 安卓
        IOS, // ios
        Unexpected, // 未知类型
    }

    [Serializable]
    public enum AdmobType
    {
        Unknown, // 错误类型
        BannerView, // 横幅广告
        InterstitialAd, // 插页式广告
        RewardedAd, // 激励广告
    }

    // 暂定支持平台:Admob 支持中介广告商:Admob,Facebook，unityAds，Ironsource，Applovin
    [Serializable]
    public class AdmobConfig
    {
        public string AdmobADCompany; //广告中介名称
        public AdmobPlatform Platform; //广告中介支持平台
        public string AdUnitId; // admob-adUnitId
        public AdmobType Type; // 广告中介类型

        public AdmobConfig(string company, AdmobPlatform platform, string adUnitId, AdmobType type)
        {
            this.AdmobADCompany = company;
            this.Platform = platform;
            this.AdUnitId = adUnitId;
            this.Type = type;
        }
    }
}

