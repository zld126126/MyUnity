using System;
using System.Collections.Generic;
using UnityEngine;

namespace MySDK_Admob
{
    /// <summary>
    /// 广告id : adUnitId -- 官方提供测试id 替换线上id即可
    /// </summary>
    public class AdmobAsset : ScriptableObject
    {
        /// <summary>
        /// 安卓横幅广告
        /// </summary>
        [SerializeField]
        public AdmobConfig Andriod_Banner = new AdmobConfig("",AdmobPlatform.Andriod, "ca-app-pub-3940256099942544/6300978111", AdmobType.BannerView);//安卓横幅广告

        /// <summary>
        /// 安卓插页广告
        /// </summary>
        [SerializeField]
        public AdmobConfig Andriod_Interstitial = new AdmobConfig("", AdmobPlatform.Andriod, "ca-app-pub-3940256099942544/1033173712", AdmobType.InterstitialAd);

        /// <summary>
        /// 安卓激励广告
        /// </summary>
        [SerializeField]
        public AdmobConfig Andriod_Rewarded = new AdmobConfig("", AdmobPlatform.Andriod, "ca-app-pub-3940256099942544/5224354917", AdmobType.RewardedAd);

        /// <summary>
        /// IOS横幅广告
        /// </summary>
        [SerializeField]
        public AdmobConfig IOS_Banner = new AdmobConfig("", AdmobPlatform.IOS, "ca-app-pub-3940256099942544/2934735716", AdmobType.BannerView);

        /// <summary>
        /// IOS插页广告
        /// </summary>
        [SerializeField]
        public AdmobConfig IOS_Interstitial = new AdmobConfig("", AdmobPlatform.IOS, "ca-app-pub-3940256099942544/4411468910", AdmobType.InterstitialAd);

        /// <summary>
        /// IOS激励广告
        /// </summary>
        [SerializeField]
        public AdmobConfig IOS_Rewarded = new AdmobConfig("", AdmobPlatform.IOS, "ca-app-pub-3940256099942544/1712485313", AdmobType.RewardedAd);

        /// <summary>
        /// 测试设备ID
        /// IDFA举例:4EB1000D0350CEB429EDF581F975B45E 或者 CE56E5DDD15A526E9313E8AA42CDF257 ...
        /// </summary>
        [SerializeField]
        public List<string> testDeviceIds = new List<string>();
    }

    /// <summary>
    /// Admob平台类型
    /// </summary>
    [Serializable]
    public enum AdmobPlatform
    {
        Unknown, // 错误类型
        Andriod, // 安卓
        IOS, // ios
        Unexpected, // 未知类型
    }

    /// <summary>
    /// Admob广告类型
    /// </summary>
    [Serializable]
    public enum AdmobType
    {
        Unknown, // 错误类型
        BannerView, // 横幅广告
        InterstitialAd, // 插页式广告
        RewardedAd, // 激励广告
    }

    /// <summary>
    /// Admob配置
    /// </summary>
    [Serializable]
    public class AdmobConfig
    {
        /// <summary>
        /// 广告中介名称
        /// </summary>
        public string AdmobADCompany;
        /// <summary>
        /// 广告平台类型
        /// </summary>
        public AdmobPlatform Platform;
        /// <summary>
        /// 广告id : admob-adUnitId
        /// </summary>
        public string AdUnitId;
        /// <summary>
        /// 广告中介类型
        /// </summary>
        public AdmobType Type;

        public AdmobConfig(string company, AdmobPlatform platform, string adUnitId, AdmobType type)
        {
            this.AdmobADCompany = company;
            this.Platform = platform;
            this.AdUnitId = adUnitId;
            this.Type = type;
        }
    }
}

