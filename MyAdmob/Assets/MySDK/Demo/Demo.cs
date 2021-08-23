using GoogleMobileAds.Api;
using MySDK_Admob;
using System;
using System.Collections.Generic;
using UnityEngine;

namespace MySDK_Admob_Test
{
    public class Demo : MonoBehaviour
    {
        private bool FirstShow = false;

        private BannerView bannerView;
        private InterstitialAd interstitialAd;
        private RewardedAd rewardedAd;
        private RewardedAd rewardedAdPreload1;
        private RewardedAd rewardedAdPreload2;
        private RewardedAd rewardedAdMulti1;
        private RewardedAd rewardedAdMulti2;

        void Start()
        {
            // 初始化sdk
            MySDK_Admob.SDKManager.instance.StartUp(GetGroups(), GetDevicesIds(), true);
        }

        // 获取admob配置组
        Dictionary<AdmobGroupType, AdmobGroup[]> GetGroups()
        {
            Dictionary<AdmobGroupType, AdmobGroup[]> groups = new Dictionary<AdmobGroupType, AdmobGroup[]>();
            AdmobGroup[] admobGroup_BannerView = new AdmobGroup[] {
                new AdmobGroup("AdmobTest", AdmobGroupPlatform.Andriod, "ca-app-pub-3940256099942544/6300978111", AdmobGroupType.BannerView),
                new AdmobGroup("AdmobTest", AdmobGroupPlatform.IOS, "ca-app-pub-3940256099942544/2934735716", AdmobGroupType.BannerView),
                new AdmobGroup("AdmobTest", AdmobGroupPlatform.Unexpected, "unexpected_platform", AdmobGroupType.BannerView),
            };
            AdmobGroup[] admobGroup_InterstitialAd = new AdmobGroup[] {
                new AdmobGroup("AdmobTest", AdmobGroupPlatform.Andriod, "ca-app-pub-3940256099942544/1033173712", AdmobGroupType.InterstitialAd),
                new AdmobGroup("AdmobTest", AdmobGroupPlatform.IOS, "ca-app-pub-3940256099942544/4411468910", AdmobGroupType.InterstitialAd),
                new AdmobGroup("AdmobTest", AdmobGroupPlatform.Unexpected, "unexpected_platform", AdmobGroupType.InterstitialAd),
            };
            AdmobGroup[] admobGroup_RewardedAd = new AdmobGroup[] {
                new AdmobGroup("AdmobTest", AdmobGroupPlatform.Andriod, "ca-app-pub-3940256099942544/5224354917", AdmobGroupType.RewardedAd),
                new AdmobGroup("AdmobTest", AdmobGroupPlatform.IOS, "ca-app-pub-3940256099942544/1712485313", AdmobGroupType.RewardedAd),
                new AdmobGroup("AdmobTest", AdmobGroupPlatform.Unexpected, "unexpected_platform", AdmobGroupType.RewardedAd),
            };
            groups.Add(AdmobGroupType.BannerView, admobGroup_BannerView);
            groups.Add(AdmobGroupType.InterstitialAd, admobGroup_InterstitialAd);
            groups.Add(AdmobGroupType.RewardedAd, admobGroup_RewardedAd);
            return groups;
        }

        // 获取测试设备id
        List<string> GetDevicesIds()
        {
            List<string> deviceIds = new List<string>();
            // 逍遥虚拟机
            deviceIds.Add("4EB1000D0350CEB429EDF581F975B45E");
            // 小米手机(K30)
            deviceIds.Add("CE56E5DDD15A526E9313E8AA42CDF257");
            return deviceIds;
        }

        #region BANNER ADS

        public void RequestBannerAd()
        {
            if (MySDK_Admob.SDKManager.instance.IsReady())
            {
                string adUnitId = MySDK_Admob.AdmobConfig.instance.GetAdUnitId(MySDK_Admob.AdmobGroupType.BannerView);
                if (this.bannerView != null)
                {
                    MySDK_Admob.SDKManager.instance.DestroyBannerAd(this.bannerView);
                }

                this.bannerView = MySDK_Admob.SDKManager.instance.CreateBannerAd(adUnitId, AdSize.Banner, AdPosition.Top);
                if (this.bannerView != null) {
                    // 绑定事件(按需自由绑定)
                    this.bannerView.OnAdLoaded += MySDK_Admob.SDKManager.instance.HandleAdLoaded;
                    this.bannerView.OnAdFailedToLoad += MySDK_Admob.SDKManager.instance.HandleAdFailedToLoad;
                    this.bannerView.OnAdOpening += MySDK_Admob.SDKManager.instance.HandleAdOpening;
                    this.bannerView.OnAdClosed += MySDK_Admob.SDKManager.instance.HandleAdClosed;
                    this.bannerView.OnPaidEvent += MySDK_Admob.SDKManager.instance.HandlePaidEvent;

                    MySDK_Admob.SDKManager.instance.RequestBannerAd(this.bannerView);
                }
            }
        }

        public void DestroyBannerAd()
        {
            MySDK_Admob.SDKManager.instance.DestroyBannerAd(this.bannerView);
        }

        #endregion

        #region INTERSTITIAL ADS

        public void RequestInterstitialAd()
        {
            if (MySDK_Admob.SDKManager.instance.IsReady())
            {
                string adUnitId = MySDK_Admob.AdmobConfig.instance.GetAdUnitId(MySDK_Admob.AdmobGroupType.InterstitialAd);
                if (this.interstitialAd != null)
                {
                    MySDK_Admob.SDKManager.instance.DestroyInterstitialAd(this.interstitialAd);
                }

                this.interstitialAd = MySDK_Admob.SDKManager.instance.CreateInterstitialAd(adUnitId);
                if (this.interstitialAd != null) {
                    // 绑定事件(按需自由绑定)
                    this.interstitialAd.OnAdLoaded += MySDK_Admob.SDKManager.instance.HandleAdLoaded;
                    this.interstitialAd.OnAdFailedToLoad += MySDK_Admob.SDKManager.instance.HandleAdFailedToLoad;
                    this.interstitialAd.OnAdOpening += MySDK_Admob.SDKManager.instance.HandleAdOpening;
                    this.interstitialAd.OnAdClosed += MySDK_Admob.SDKManager.instance.HandleAdClosed;
                    this.interstitialAd.OnPaidEvent += MySDK_Admob.SDKManager.instance.HandlePaidEvent;
                    this.interstitialAd.OnAdDidRecordImpression += MySDK_Admob.SDKManager.instance.HandleAdDidRecordImpression;
                    this.interstitialAd.OnAdFailedToShow += MySDK_Admob.SDKManager.instance.HandleAdFailedToShow;

                    MySDK_Admob.SDKManager.instance.RequestInterstitialAd(this.interstitialAd);
                }
            }
        }

        public void ShowInterstitialAd()
        {
            if (this.interstitialAd != null)
            {
                MySDK_Admob.SDKManager.instance.ShowInterstitialAd(this.interstitialAd);
            }
        }

        public void DestroyInterstitialAd()
        {
            MySDK_Admob.SDKManager.instance.DestroyInterstitialAd(this.interstitialAd);
        }
        #endregion

        #region REWARDED ADS

        public void RequestRewardedAd()
        {
            if (MySDK_Admob.SDKManager.instance.IsReady())
            {
                string adUnitId = MySDK_Admob.AdmobConfig.instance.GetAdUnitId(MySDK_Admob.AdmobGroupType.RewardedAd);
                if (this.rewardedAd != null)
                {
                    this.rewardedAd = null;
                }

                if (this.rewardedAd == null)
                {
                    this.rewardedAd = MySDK_Admob.SDKManager.instance.CreateRewardedAd(adUnitId);
                }

                if (this.rewardedAd != null) {
                    // 绑定事件(按需自由绑定)
                    this.rewardedAd.OnAdLoaded += MySDK_Admob.SDKManager.instance.HandleAdLoaded;
                    this.rewardedAd.OnAdFailedToLoad += MySDK_Admob.SDKManager.instance.HandleAdFailedToLoad;
                    this.rewardedAd.OnAdOpening += MySDK_Admob.SDKManager.instance.HandleAdOpening;
                    this.rewardedAd.OnAdClosed += MySDK_Admob.SDKManager.instance.HandleAdClosed;
                    this.rewardedAd.OnPaidEvent += MySDK_Admob.SDKManager.instance.HandlePaidEvent;
                    this.rewardedAd.OnAdDidRecordImpression += MySDK_Admob.SDKManager.instance.HandleAdDidRecordImpression;
                    this.rewardedAd.OnAdFailedToShow += MySDK_Admob.SDKManager.instance.HandleAdFailedToShow;
                    this.rewardedAd.OnUserEarnedReward += MySDK_Admob.SDKManager.instance.HandleUserEarnedReward;

                    MySDK_Admob.SDKManager.instance.RequestRewardedAd(this.rewardedAd);
                }
            }
        }

        public void ShowRewardedAd()
        {
            MySDK_Admob.SDKManager.instance.ShowRewardedAd(this.rewardedAd);
        }

        public void DestroyRewardedAd()
        {
            MySDK_Admob.SDKManager.instance.DestroyRewardedAd(this.rewardedAd);
        }

        public void RequestRewardedAdMulti()
        {
            if (MySDK_Admob.SDKManager.instance.IsReady())
            {
                string adUnitId = MySDK_Admob.AdmobConfig.instance.GetAdUnitId(MySDK_Admob.AdmobGroupType.RewardedAd);

                if (this.rewardedAdMulti1 != null)
                {
                    MySDK_Admob.SDKManager.instance.DestroyRewardedAd(this.rewardedAdMulti1);
                    this.rewardedAdMulti1 = null;
                }

                if (this.rewardedAdMulti2 != null)
                {
                    MySDK_Admob.SDKManager.instance.DestroyRewardedAd(this.rewardedAdMulti2);
                    this.rewardedAdMulti2 = null;
                }

                if (this.rewardedAdMulti1 == null)
                {
                    this.rewardedAdMulti1 = MySDK_Admob.SDKManager.instance.CreateRewardedAd(adUnitId);
                    MySDK_Admob.SDKManager.instance.ShowRewardedAd(this.rewardedAdMulti1);
                }

                if (this.rewardedAdMulti2 == null)
                {
                    this.rewardedAdMulti2 = MySDK_Admob.SDKManager.instance.CreateRewardedAd(adUnitId);
                    MySDK_Admob.SDKManager.instance.ShowRewardedAd(this.rewardedAdMulti2);
                }
            }
        }

        public void ShowRewardedAdMulti()
        {
            MySDK_Admob.SDKManager.instance.ShowRewardedAd(this.rewardedAdMulti1);
            MySDK_Admob.SDKManager.instance.ShowRewardedAd(this.rewardedAdMulti2);
        }

        public void DestroyRewardedAdMulti()
        {
            MySDK_Admob.SDKManager.instance.DestroyRewardedAd(this.rewardedAdMulti1);
            MySDK_Admob.SDKManager.instance.DestroyRewardedAd(this.rewardedAdMulti2);
        }

        public void RequestRewardedAdPreload()
        {
            if (MySDK_Admob.SDKManager.instance.IsReady())
            {
                string adUnitId = MySDK_Admob.AdmobConfig.instance.GetAdUnitId(MySDK_Admob.AdmobGroupType.RewardedAd);

                if (this.rewardedAdPreload1 != null)
                {
                    MySDK_Admob.SDKManager.instance.DestroyRewardedAd(this.rewardedAdPreload1);
                    this.rewardedAdPreload1 = null;
                }

                if (this.rewardedAdPreload1 == null)
                {
                    this.rewardedAdPreload1 = MySDK_Admob.SDKManager.instance.CreateRewardedAd(adUnitId);
                    MySDK_Admob.SDKManager.instance.ShowRewardedAd(this.rewardedAdPreload1);
                    this.rewardedAdPreload1.OnAdClosed += HandleRewardedAdClosed;
                }
            }
        }

        private void HandleRewardedAdClosed(object sender, EventArgs args)
        {
            string adUnitId = MySDK_Admob.AdmobConfig.instance.GetAdUnitId(MySDK_Admob.AdmobGroupType.RewardedAd);

            if (this.rewardedAdPreload2 != null)
            {
                MySDK_Admob.SDKManager.instance.DestroyRewardedAd(this.rewardedAdPreload2);
                this.rewardedAdPreload2 = null;
            }

            if (this.rewardedAdPreload2 == null)
            {
                this.rewardedAdPreload2 = MySDK_Admob.SDKManager.instance.CreateRewardedAd(adUnitId);
                MySDK_Admob.SDKManager.instance.ShowRewardedAd(this.rewardedAdPreload2);
            }
        }

        public void ShowRewardedAdPreload()
        {
            MySDK_Admob.SDKManager.instance.ShowRewardedAd(this.rewardedAdPreload1);
        }

        public void ShowRewardedAdPreload2()
        {
            MySDK_Admob.SDKManager.instance.ShowRewardedAd(this.rewardedAdPreload2);
        }

        public void DestroyRewardedAdPreload()
        {
            MySDK_Admob.SDKManager.instance.DestroyRewardedAd(this.rewardedAdPreload1);
            MySDK_Admob.SDKManager.instance.DestroyRewardedAd(this.rewardedAdPreload2);
        }
        #endregion

        // Update is called once per frame
        void Update()
        {
            // 第一次加载 测试输出一个横屏广告
            if (!FirstShow) {
                bool ready = MySDK_Admob.SDKManager.instance.IsReady();
                if (ready) {
                    FirstShow = true;
                    RequestBannerAd();
                }
            }
        }

        public void QuitApp() {
            #if UNITY_EDITOR
                        UnityEditor.EditorApplication.isPlaying = false;
            #else
            Application.Quit();
            #endif
        }
    }
}
