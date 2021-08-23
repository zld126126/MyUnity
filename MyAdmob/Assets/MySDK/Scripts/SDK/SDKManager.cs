﻿using GoogleMobileAds.Api;
using GoogleMobileAds.Common;
using System;
using System.Collections.Generic;
using UnityEngine;

namespace MySDK_Admob
{
    // SDK 管理器
    public class SDKManager : Singleton<SDKManager>
    {
        private bool InitComplate = false;
        private bool IsDebug = false;
        private List<BannerView> bannerViewList = new List<BannerView>();
        private List<InterstitialAd> interstitialAdList = new List<InterstitialAd>();
        private List<RewardedAd> rewardedAdList = new List<RewardedAd>();

        public bool IsReady()
        {
            return this.InitComplate;
        }

        public override void Dispose() { }

        #region SDK初始化
        // groups 是admob配置信息 -- testDevicesIds 是测试设备id(可以传空list) -- isDebug 是否是测试模式
        public void StartUp(Dictionary<AdmobGroupType, AdmobGroup[]> groups, List<string> testDevicesIds, bool isDebug = false)
        {
            Debug.Log("enter into: StartUp , isDebug: " + isDebug);
            // 设置debug
            this.IsDebug = isDebug;
            if (this.IsDebug)
            {
                MobileAds.SetiOSAppPauseOnBackground(true);
            }

            // 初始化 admob 配置
            AdmobConfig.instance.StartUp(groups);

            // 需要测试的设备id(真实环境)
            if (testDevicesIds.Count > 0)
            {
                RequestConfiguration requestConfiguration =
                new RequestConfiguration.Builder()
                .SetTagForChildDirectedTreatment(TagForChildDirectedTreatment.Unspecified)
                .SetTestDeviceIds(testDevicesIds).build();
                MobileAds.SetRequestConfiguration(requestConfiguration);
            }

            // 初始化 Mobile Ads SDK
            MobileAds.Initialize(HandleInitCompleteAction);
        }

        // Google提供封装init方法
        private void HandleInitCompleteAction(InitializationStatus initstatus)
        {
            Dictionary<string, AdapterStatus> map = initstatus.getAdapterStatusMap();
            foreach (KeyValuePair<string, AdapterStatus> keyValuePair in map)
            {
                string className = keyValuePair.Key;
                AdapterStatus status = keyValuePair.Value;
                switch (status.InitializationState)
                {
                    case AdapterState.NotReady:
                        // The adapter initialization did not complete.
                        MonoBehaviour.print("Adapter: " + className + " not ready.");
                        break;
                    case AdapterState.Ready:
                        // The adapter was successfully initialized.
                        MonoBehaviour.print("Adapter: " + className + " is initialized.");
                        break;
                }
            }

            MobileAdsEventExecutor.ExecuteInUpdate(() =>
            {
                Debug.Log("Initialization complete");
                this.InitComplate = true;
            });
        }
        #endregion

        private AdRequest CreateAdRequest()
        {
            return new AdRequest.Builder().Build();
        }

        #region BANNER ADS 横幅广告
        /** 
         * https://developers.google.com/admob/unity/banner
         **/
        public BannerView CreateBannerAd(string adUnitId, AdSize adSize, AdPosition adPosition = AdPosition.Top)
        {
            if (!this.InitComplate)
            {
                throw new Exception("admob don`t init complate!");
            }

            BannerView bannerView = new BannerView(adUnitId, adSize, adPosition);
            this.bannerViewList.Add(bannerView);
            return bannerView;
        }

        public BannerView CreateBannerAd(string adUnitId, AdSize adSize, int x, int y)
        {
            if (!this.InitComplate)
            {
                throw new Exception("admob don`t init complate!");
            }

            BannerView bannerView = new BannerView(adUnitId, adSize, x, y);
            this.bannerViewList.Add(bannerView);
            return bannerView;
        }

        public void RequestBannerAd(BannerView bannerView)
        {
            if (!this.InitComplate)
            {
                return;
            }

            if (bannerView != null)
            {
                bannerView.LoadAd(CreateAdRequest());
            }
        }

        public void DestroyBannerAd(BannerView bannerView)
        {
            if (bannerView != null)
            {
                bannerView.Destroy();
            }
        }

        public void ClearBannerAd()
        {
            for (int i = 0; i < this.bannerViewList.Count; i++)
            {
                BannerView bannerView = this.bannerViewList[i];
                if (bannerView != null)
                {
                    DestroyBannerAd(bannerView);
                }
            }
            this.bannerViewList = new List<BannerView>();
        }

        #endregion

        #region INTERSTITIAL ADS 插页式广告
        /**
         * https://developers.google.com/admob/unity/interstitial
         * 特殊说明(必看):
            插页式广告应在应用流程的自然停顿期间进行展示，例如游戏的不同关卡之间或用户完成一项任务之后，都是非常不错的展示时机。要展示插页式广告，请使用 isLoaded() 方法验证广告是否已完成加载，然后调用 show()。

            上一个代码示例中的插页式广告可以在游戏结束时展示，如下所示。

            private void GameOver()
            {
              if (this.interstitial.IsLoaded()) {
                this.interstitial.Show();
              }
            }
         * 
         **/

        public InterstitialAd CreateInterstitialAd(string adUnitId)
        {
            if (!this.InitComplate)
            {
                throw new Exception("admob don`t init complate!");
            }

            InterstitialAd interstitialAd = new InterstitialAd(adUnitId);
            this.interstitialAdList.Add(interstitialAd);
            return interstitialAd;
        }

        public void RequestInterstitialAd(InterstitialAd interstitialAd)
        {
            if (!this.InitComplate)
            {
                return;
            }

            if (interstitialAd != null) {
                interstitialAd.LoadAd(CreateAdRequest());
            }
        }

        public void ShowInterstitialAd(InterstitialAd interstitialAd)
        {
            if (interstitialAd.IsLoaded())
            {
                interstitialAd.Show();
            }
            else
            {
                Debug.LogError("Interstitial ad is not ready yet");
            }
        }

        public void DestroyInterstitialAd(InterstitialAd interstitialAd)
        {
            if (interstitialAd != null)
            {
                interstitialAd.Destroy();
            }
        }

        public void ClearInterstitialAd()
        {
            for (int i = 0; i < this.interstitialAdList.Count; i++)
            {
                InterstitialAd interstitialAd = this.interstitialAdList[i];
                if (interstitialAd != null)
                {
                    DestroyInterstitialAd(interstitialAd);
                }
            }
            this.interstitialAdList = new List<InterstitialAd>();
        }
        #endregion

        #region REWARDED ADS 激励广告
        public RewardedAd CreateRewardedAd(string adUnitId)
        {
            if (!this.InitComplate)
            {
                throw new Exception("admob don`t init complate!");
            }

            RewardedAd rewardedAd = new RewardedAd(adUnitId);
            this.rewardedAdList.Add(rewardedAd);
            return rewardedAd;
        }

        public void RequestRewardedAd(RewardedAd rewardedAd)
        {
            if (!this.InitComplate)
            {
                return;
            }

            if (rewardedAd != null)
            {
                rewardedAd.LoadAd(CreateAdRequest());
            }
        }

        public void ShowRewardedAd(RewardedAd rewardedAd)
        {
            if (rewardedAd != null)
            {
                if (rewardedAd.IsLoaded())
                {
                    rewardedAd.Show();
                }
                else
                {
                    Debug.LogError("Rewarded ad is not ready yet.");
                }
            }
        }

        public void DestroyRewardedAd(RewardedAd rewardedAd)
        {
            if (rewardedAd != null)
            {
                rewardedAd.Destroy();
            }
        }

        public void ClearRewardedAd()
        {
            for (int i = 0; i < this.rewardedAdList.Count; i++)
            {
                RewardedAd rewardedAd = this.rewardedAdList[i];
                if (rewardedAd != null)
                {
                    DestroyRewardedAd(rewardedAd);
                }
            }
            this.rewardedAdList = new List<RewardedAd>();
        }

        #endregion

        #region [[REWARDED ADS 激励广告]] -- Register Event 注册事件 默认只打印加载失败情况
        /**
         * Banner && Interstitial
         * https://developers.google.com/admob/unity/interstitial
         * https://developers.google.com/admob/unity/banner
         *  OnAdLoaded 	广告加载完成时，系统会执行 OnAdLoaded 事件。
            GetErrorCode 	广告加载失败时，系统会调用 GetErrorCode 事件。Message 参数用于描述发生了何种类型的失败。
            OnAdOpening 	在广告开始展示并铺满设备屏幕时，系统会调用此方法。
            OnAdClosed 	此方法会在用户点按“关闭”图标或使用“返回”按钮关闭插页式广告时被调用。如果您的应用暂停了音频输出或游戏循环，则非常适合使用此方法恢复这些活动。
            
            官方代码缺失 -- OnAdLeavingApplication 	用户点击打开其他应用（例如，Google Play 商店）时，系统会先调用 OnAdOpened，再调用此方法，从而在后台运行当前应用。
         * 
         * 
         * Rewarded
         * https://developers.google.com/admob/unity/rewarded
         * 可用的广告事件
            OnAdLoaded
                在广告加载完成时被调用。
            OnAdFailedToLoad
                在广告加载失败时被调用。提供的 AdErrorEventArgs 的 Message 属性用于描述发生了何种类型的失败。
            OnAdOpening
                在广告开始展示并铺满设备屏幕时被调用。如需暂停应用音频输出或游戏循环，则非常适合使用此方法。
            OnAdFailedToShow
                在广告显示失败时被调用。提供的 AdErrorEventArgs 的 Message 属性用于描述发生了何种类型的失败。
            OnUserEarnedReward
                在用户因观看视频而应获得奖励时被调用。 Reward 参数描述了要呈现给用户的奖励。
            OnAdClosed
                在用户点按“关闭”图标或使用“返回”按钮关闭激励视频广告时被调用。如果您的应用暂停了音频输出或游戏循环，则非常适合使用此方法恢复这些活动。 

            特殊说明(必看):
            OnUserEarnedReward 事件会提供特殊事件参数。该事件会传递一个 Reward 实例，其中包含的 Type 和 Amount 用于描述用户所获奖励：

            public void HandleUserEarnedReward(object sender, Reward args)
            {
                string type = args.Type;
                double amount = args.Amount;
                 MonoBehaviour.print(
                      "HandleRewardedAdRewarded event received for "
                          + amount.ToString() + " " + type);
            }

            特殊说明2(必看):
            使用 OnAdClosed 预加载下一个激励广告RewardedAd 是一次性对象。这意味着，在展示激励广告后，就不能再用该对象加载另一个广告了。要请求另一个激励广告，您需要创建新的 RewardedAd 对象。
            最佳做法是在 OnAdClosed 广告事件中加载另一个激励广告，以便在上一个激励广告关闭后，立即开始加载下一个激励广告：
         **/
        public void HandleAdLoaded(object sender, EventArgs args)
        {
            Debug.Log("HandleAdLoaded event received");
        }

        public void HandleAdFailedToLoad(object sender, AdFailedToLoadEventArgs args)
        {
            Debug.Log(
                "HandleAdFailedToLoad event received with message: "
                                 + args.ToString());

            int code = this.GetErrorCode(sender, args);
            Debug.Log("HandleAdFailedToLoad ErrorCode" + code.ToString());
        }

        public void HandleAdOpening(object sender, EventArgs args)
        {
            Debug.Log("HandleAdOpening event received");
        }

        public void HandlePaidEvent(object sender, AdValueEventArgs args)
        {
            Debug.Log(
                "HandlePaidEvent event received: "
                                 + args.ToString());
        }

        public void HandleAdClosed(object sender, EventArgs args)
        {
            Debug.Log("HandleAdClosed event received");
        }

        public void HandleAdFailedToShow(object sender, AdErrorEventArgs args)
        {
            Debug.Log(
                "HandleAdFailedToShow event received with message: "
                                 + args.ToString());
        }

        public void HandleAdDidRecordImpression(object sender, EventArgs args) {
            Debug.Log("HandleAdDidRecordImpression event received");
        }

        public void HandleUserEarnedReward(object sender, Reward args)
        {
            string type = args.Type;
            double amount = args.Amount;
            Debug.Log(
                "HandleRewardedAdRewarded event received for "
                            + amount.ToString() + " " + type);
        }
        #endregion

        // 参考Google提供的广告加载错误日志方法 https://developers.google.com/admob/unity/ad-load-errors
        public int GetErrorCode(object sender, AdFailedToLoadEventArgs args)
        {
            LoadAdError loadAdError = args.LoadAdError;

            // Gets the domain from which the error came.
            string domain = loadAdError.GetDomain();

            // Gets the error code. See
            // https://developers.google.com/android/reference/com/google/android/gms/ads/AdRequest
            // and https://developers.google.com/admob/ios/api/reference/Enums/GADErrorCode
            // for a list of possible codes.
            int code = loadAdError.GetCode();

            // Gets an error message.
            // For example "Account not approved yet". See
            // https://support.google.com/admob/answer/9905175 for explanations of
            // common errors.
            string message = loadAdError.GetMessage();

            // Gets the cause of the error, if available.
            AdError underlyingError = loadAdError.GetCause();

            // All of this information is available via the error's toString() method.
            Debug.LogError("Load error string: " + loadAdError.ToString());

            // Get response information, which may include results of mediation requests.
            ResponseInfo responseInfo = loadAdError.GetResponseInfo();
            Debug.Log("Response info: " + responseInfo.ToString());

            return code;
        }
    }
}
