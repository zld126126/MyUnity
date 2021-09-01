using GoogleMobileAds.Api;
using MySDK_Admob;
using System;
using System.Collections.Generic;
using UnityEngine;

namespace MySDK_Admob_Test
{
    public class Demo : MonoBehaviour
    {
        /// <summary>
        /// 是否首次展示
        /// </summary>
        private bool FirstShow = false;

        /// <summary>
        /// 横幅广告
        /// </summary>
        private BannerView bannerView;
        /// <summary>
        /// 插页广告
        /// </summary>
        private InterstitialAd interstitialAd;
        /// <summary>
        /// 激励广告
        /// </summary>
        private RewardedAd rewardedAd;
        /// <summary>
        /// 预加载激励广告1
        /// </summary>
        private RewardedAd rewardedAdPreload1;
        /// <summary>
        /// 预加载激励广告2
        /// </summary>
        private RewardedAd rewardedAdPreload2;
        /// <summary>
        /// 多个激励广告1
        /// </summary>
        private RewardedAd rewardedAdMulti1;
        /// <summary>
        /// 多个激励广告2
        /// </summary>
        private RewardedAd rewardedAdMulti2;

        void Start()
        {
            // 初始化sdk
            MySDK_Admob.SDKManager.instance.Setup(true);
        }

        #region BANNER ADS
        /// <summary>
        /// 请求横幅广告
        /// </summary>
        public void RequestBannerAd()
        {
            if (MySDK_Admob.SDKManager.instance.IsReady())
            {
                string adUnitId = MySDK_Admob.SDKSettings.instance.GetAdUnitId(MySDK_Admob.AdmobType.BannerView);
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

        /// <summary>
        /// 销毁横幅广告
        /// </summary>
        public void DestroyBannerAd()
        {
            MySDK_Admob.SDKManager.instance.DestroyBannerAd(this.bannerView);
        }

        #endregion

        #region INTERSTITIAL ADS

        /// <summary>
        /// 请求插页广告
        /// </summary>
        public void RequestInterstitialAd()
        {
            if (MySDK_Admob.SDKManager.instance.IsReady())
            {
                string adUnitId = MySDK_Admob.SDKSettings.instance.GetAdUnitId(MySDK_Admob.AdmobType.InterstitialAd);
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

        /// <summary>
        /// 展示插页广告
        /// </summary>
        public void ShowInterstitialAd()
        {
            if (this.interstitialAd != null)
            {
                MySDK_Admob.SDKManager.instance.ShowInterstitialAd(this.interstitialAd);
            }
        }

        /// <summary>
        /// 销毁插页广告
        /// </summary>
        public void DestroyInterstitialAd()
        {
            MySDK_Admob.SDKManager.instance.DestroyInterstitialAd(this.interstitialAd);
        }
        #endregion

        #region REWARDED ADS
        /// <summary>
        /// 请求激励广告
        /// </summary>
        public void RequestRewardedAd()
        {
            if (MySDK_Admob.SDKManager.instance.IsReady())
            {
                string adUnitId = MySDK_Admob.SDKSettings.instance.GetAdUnitId(MySDK_Admob.AdmobType.RewardedAd);
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

        /// <summary>
        /// 展示激励广告
        /// </summary>
        public void ShowRewardedAd()
        {
            MySDK_Admob.SDKManager.instance.ShowRewardedAd(this.rewardedAd);
        }

        /// <summary>
        /// 销毁激励广告
        /// </summary>
        public void DestroyRewardedAd()
        {
            MySDK_Admob.SDKManager.instance.DestroyRewardedAd(this.rewardedAd);
        }

        /// <summary>
        /// 请求多个激励广告
        /// </summary>
        public void RequestRewardedAdMulti()
        {
            if (MySDK_Admob.SDKManager.instance.IsReady())
            {
                string adUnitId = MySDK_Admob.SDKSettings.instance.GetAdUnitId(MySDK_Admob.AdmobType.RewardedAd);

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
                    MySDK_Admob.SDKManager.instance.RequestRewardedAd(this.rewardedAdMulti1);
                }

                if (this.rewardedAdMulti2 == null)
                {
                    this.rewardedAdMulti2 = MySDK_Admob.SDKManager.instance.CreateRewardedAd(adUnitId);
                    MySDK_Admob.SDKManager.instance.RequestRewardedAd(this.rewardedAdMulti2);
                }
            }
        }

        /// <summary>
        /// 展示多个激励广告
        /// </summary>
        public void ShowRewardedAdMulti()
        {
            MySDK_Admob.SDKManager.instance.ShowRewardedAd(this.rewardedAdMulti1);
            MySDK_Admob.SDKManager.instance.ShowRewardedAd(this.rewardedAdMulti2);
        }

        /// <summary>
        /// 销毁多个激励广告
        /// </summary>
        public void DestroyRewardedAdMulti()
        {
            MySDK_Admob.SDKManager.instance.DestroyRewardedAd(this.rewardedAdMulti1);
            MySDK_Admob.SDKManager.instance.DestroyRewardedAd(this.rewardedAdMulti2);
        }

        /// <summary>
        /// 预加载激励广告
        /// </summary>
        public void RequestRewardedAdPreload()
        {
            if (MySDK_Admob.SDKManager.instance.IsReady())
            {
                string adUnitId = MySDK_Admob.SDKSettings.instance.GetAdUnitId(MySDK_Admob.AdmobType.RewardedAd);

                if (this.rewardedAdPreload1 != null)
                {
                    MySDK_Admob.SDKManager.instance.DestroyRewardedAd(this.rewardedAdPreload1);
                    this.rewardedAdPreload1 = null;
                }

                if (this.rewardedAdPreload1 == null)
                {
                    this.rewardedAdPreload1 = MySDK_Admob.SDKManager.instance.CreateRewardedAd(adUnitId);
                    MySDK_Admob.SDKManager.instance.RequestRewardedAd(this.rewardedAdPreload1);
                    this.rewardedAdPreload1.OnAdClosed += HandleRewardedAdClosed;
                }
            }
        }

        /// <summary>
        /// 预加载激励广告 - 辅助方法
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="args"></param>
        private void HandleRewardedAdClosed(object sender, EventArgs args)
        {
            string adUnitId = MySDK_Admob.SDKSettings.instance.GetAdUnitId(MySDK_Admob.AdmobType.RewardedAd);

            if (this.rewardedAdPreload2 != null)
            {
                MySDK_Admob.SDKManager.instance.DestroyRewardedAd(this.rewardedAdPreload2);
                this.rewardedAdPreload2 = null;
            }

            if (this.rewardedAdPreload2 == null)
            {
                this.rewardedAdPreload2 = MySDK_Admob.SDKManager.instance.CreateRewardedAd(adUnitId);
                MySDK_Admob.SDKManager.instance.RequestRewardedAd(this.rewardedAdPreload2);
            }
        }

        /// <summary>
        /// 展示预加载激励广告1
        /// </summary>
        public void ShowRewardedAdPreload()
        {
            MySDK_Admob.SDKManager.instance.ShowRewardedAd(this.rewardedAdPreload1);
        }

        /// <summary>
        /// 展示预加载激励广告2
        /// </summary>
        public void ShowRewardedAdPreload2()
        {
            MySDK_Admob.SDKManager.instance.ShowRewardedAd(this.rewardedAdPreload2);
        }

        /// <summary>
        /// 销毁预加载激励广告1和2
        /// </summary>
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

        /// <summary>
        /// 关闭App
        /// </summary>
        public void QuitApp() {
            #if UNITY_EDITOR
                        UnityEditor.EditorApplication.isPlaying = false;
            #else
            Application.Quit();
            #endif
        }
    }
}
