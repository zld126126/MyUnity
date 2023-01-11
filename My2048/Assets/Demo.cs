using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;
using cn.sharesdk.unity3d;

public class Demo : MonoBehaviour {
	
	public GUISkin demoSkin;

	// Use this for initialization
	void Start ()
	{	
		ShareSDK.setCallbackObjectName("Main Camera");
		ShareSDK.open ("api20");
		
		//Sina Weibo
		Hashtable sinaWeiboConf = new Hashtable();
		sinaWeiboConf.Add("app_key", "568898243");
		sinaWeiboConf.Add("app_secret", "38a4f8204cc784f81f9f0daaf31e02e3");
		sinaWeiboConf.Add("redirect_uri", "http://www.sharesdk.cn");
		ShareSDK.setPlatformConfig (PlatformType.SinaWeibo, sinaWeiboConf);
		
		//Tencent Weibo
		Hashtable tcConf = new Hashtable();
		tcConf.Add("app_key", "801307650");
		tcConf.Add("app_secret", "ae36f4ee3946e1cbb98d6965b0b2ff5c");
		tcConf.Add("redirect_uri", "http://www.sharesdk.cn");
		ShareSDK.setPlatformConfig (PlatformType.TencentWeibo, tcConf);
		
		//SMS
		ShareSDK.setPlatformConfig (PlatformType.SMS, null);
		
		//QZone
		Hashtable qzConf = new Hashtable();
		qzConf.Add ("app_id", "100371282");
		qzConf.Add ("app_key", "aed9b0303e3ed1e27bae87c33761161d");
		ShareSDK.setPlatformConfig (PlatformType.QZone, qzConf);
		
		//WeChat
		Hashtable wcConf = new Hashtable();
		wcConf.Add ("app_id", "wx4868b35061f87885");
		ShareSDK.setPlatformConfig (PlatformType.WeChatSession, wcConf);
		ShareSDK.setPlatformConfig (PlatformType.WeChatTimeline, wcConf);
		ShareSDK.setPlatformConfig (PlatformType.WeChatFav, wcConf);
    	
		//QQ
		Hashtable qqConf = new Hashtable();
		qqConf.Add ("app_id", "100371282");
		ShareSDK.setPlatformConfig (PlatformType.QQ, qqConf);
    	
		//Facebook
		Hashtable fbConf = new Hashtable();
		fbConf.Add ("api_key", "107704292745179");
		fbConf.Add ("app_secret", "38053202e1a5fe26c80c753071f0b573");
		ShareSDK.setPlatformConfig (PlatformType.Facebook, fbConf);
    
		//Twitter
		Hashtable twConf = new Hashtable();
		twConf.Add ("consumer_key", "mnTGqtXk0TYMXYTN7qUxg");
		twConf.Add ("consumer_secret", "ROkFqr8c3m1HXqS3rm3TJ0WkAJuwBOSaWhPbZ9Ojuc");
		twConf.Add ("redirect_uri", "http://www.sharesdk.cn");
		ShareSDK.setPlatformConfig (PlatformType.Twitter, twConf);
    	
		//Google+
		Hashtable gpConf = new Hashtable();
		gpConf.Add ("client_id", "232554794995.apps.googleusercontent.com");
		gpConf.Add ("client_secret", "PEdFgtrMw97aCvf0joQj7EMk");
		gpConf.Add ("redirect_uri", "http://localhost");
		ShareSDK.setPlatformConfig (PlatformType.GooglePlus, gpConf);
    	
		//RenRen
		Hashtable rrConf = new Hashtable();
		rrConf.Add ("app_id", "226427");
		rrConf.Add ("app_key", "fc5b8aed373c4c27a05b712acba0f8c3");
		rrConf.Add ("secret_key", "f29df781abdd4f49beca5a2194676ca4");
		ShareSDK.setPlatformConfig (PlatformType.Renren, rrConf);
		
		//KaiXin
		Hashtable kxConf = new Hashtable();
		kxConf.Add ("api_key", "358443394194887cee81ff5890870c7c");
		kxConf.Add ("secret_key", "da32179d859c016169f66d90b6db2a23");
		kxConf.Add ("redirect_uri", "http://www.sharesdk.cn/");
		ShareSDK.setPlatformConfig (PlatformType.Kaixin, kxConf);
    	
		//Mail
		ShareSDK.setPlatformConfig (PlatformType.Mail, null);
		
		//Print
		ShareSDK.setPlatformConfig (PlatformType.Print, null);
		
		//Copy
		ShareSDK.setPlatformConfig (PlatformType.Copy, null);
		
		//Sohu Weibo
		Hashtable shwbConf = new Hashtable();
		shwbConf.Add ("consumer_key", "SAfmTG1blxZY3HztESWx");
		shwbConf.Add ("consumer_secret", "yfTZf)!rVwh*3dqQuVJVsUL37!F)!yS9S!Orcsij");
		shwbConf.Add ("callback_uri", "http://www.sharesdk.cn");
		ShareSDK.setPlatformConfig (PlatformType.SohuWeibo, shwbConf);
		
		//NetEase Weibo
		Hashtable netConf = new Hashtable();
		netConf.Add ("consumer_key", "T5EI7BXe13vfyDuy");
		netConf.Add ("consumer_secret", "gZxwyNOvjFYpxwwlnuizHRRtBRZ2lV1j");
		netConf.Add ("redirect_uri", "http://www.shareSDK.cn");
		ShareSDK.setPlatformConfig (PlatformType.NetEaseWeibo, netConf);
    	
		//Dropbox
		Hashtable dbConf = new Hashtable();
		dbConf.Add ("api_key", "02e2cbe5ca06de5908a863b15e149b0b");
		dbConf.Add ("secret", "9f1e7b4f71304f2f");
		dbConf.Add ("redirect_uri", "http://www.sharesdk.cn");
		ShareSDK.setPlatformConfig (PlatformType.DouBan, dbConf);
		
		//Evernote
		Hashtable enConf = new Hashtable();
		enConf.Add ("consumer_key", "sharesdk-7807");
		enConf.Add ("consumer_secret", "d05bf86993836004");
		enConf.Add ("host_type", "0");
		ShareSDK.setPlatformConfig (PlatformType.Evernote, enConf);
		
		//LinkedIn
		Hashtable liConf = new Hashtable();
		liConf.Add ("api_key", "ejo5ibkye3vo");
		liConf.Add ("secret_key", "cC7B2jpxITqPLZ5M");
		liConf.Add ("redirect_url", "http://sharesdk.cn");
		ShareSDK.setPlatformConfig (PlatformType.LinkedIn, liConf);
		
		//Pinterest
		Hashtable pinConf = new Hashtable();
		pinConf.Add ("client_id", "1432928");
		ShareSDK.setPlatformConfig (PlatformType.Pinterest, pinConf);
		
		//Pocket
		Hashtable pocketConf = new Hashtable();
		pocketConf.Add ("consumer_key", "11496-de7c8c5eb25b2c9fcdc2b627");
		pocketConf.Add ("redirect_uri", "pocketapp1234");
		ShareSDK.setPlatformConfig (PlatformType.Pocket, pocketConf);
		
		//Instapaper
		Hashtable ipConf = new Hashtable();
		ipConf.Add ("consumer_key", "4rDJORmcOcSAZL1YpqGHRI605xUvrLbOhkJ07yO0wWrYrc61FA");
		ipConf.Add ("consumer_secret", "GNr1GespOQbrm8nvd7rlUsyRQsIo3boIbMguAl9gfpdL0aKZWe");
		ShareSDK.setPlatformConfig (PlatformType.Instapaper, ipConf);
		
		//YouDaoNote
		Hashtable ydConf = new Hashtable();
		ydConf.Add ("consumer_key", "dcde25dca105bcc36884ed4534dab940");
		ydConf.Add ("consumer_secret", "d98217b4020e7f1874263795f44838fe");
		ydConf.Add ("oauth_callback", "http://www.sharesdk.cn/");
		ydConf.Add ("host_type", "1");
		ShareSDK.setPlatformConfig (PlatformType.YouDaoNote, ydConf);
    	
		//Sohu SuiShenKan
		Hashtable shkConf = new Hashtable();
		shkConf.Add ("app_key", "e16680a815134504b746c86e08a19db0");
		shkConf.Add ("app_secret", "b8eec53707c3976efc91614dd16ef81c");
		shkConf.Add ("redirect_uri", "http://sharesdk.cn");
		ShareSDK.setPlatformConfig (PlatformType.SohuKan, shkConf);
    
		//Flickr
		Hashtable flickrConf = new Hashtable();
		flickrConf.Add ("api_key", "33d833ee6b6fca49943363282dd313dd");
		flickrConf.Add ("api_secret", "3a2c5b42a8fbb8bb");
		ShareSDK.setPlatformConfig (PlatformType.Flickr, flickrConf);

		//Tumblr
		Hashtable tumblrConf = new Hashtable();
		tumblrConf.Add ("consumer_key", "2QUXqO9fcgGdtGG1FcvML6ZunIQzAEL8xY6hIaxdJnDti2DYwM");
		tumblrConf.Add ("consumer_secret", "3Rt0sPFj7u2g39mEVB3IBpOzKnM3JnTtxX2bao2JKk4VV1gtNo");
		tumblrConf.Add ("callback_url", "http://sharesdk.cn");
		ShareSDK.setPlatformConfig (PlatformType.Tumblr, tumblrConf);
    	
		//Dropbox
		Hashtable dropboxConf = new Hashtable();
		dropboxConf.Add ("app_key", "7janx53ilz11gbs");
		dropboxConf.Add ("app_secret", "c1hpx5fz6tzkm32");
		ShareSDK.setPlatformConfig (PlatformType.Dropbox, dropboxConf);
    	
		//Instagram
		Hashtable instagramConf = new Hashtable();
		instagramConf.Add ("client_id", "ff68e3216b4f4f989121aa1c2962d058");
		instagramConf.Add ("client_secret", "1b2e82f110264869b3505c3fe34e31a1");
		instagramConf.Add ("redirect_uri", "http://sharesdk.cn");
		ShareSDK.setPlatformConfig (PlatformType.Instagram, instagramConf);
		
		//VK
		Hashtable vkConf = new Hashtable();
		vkConf.Add ("application_id", "3921561");
		vkConf.Add ("secret_key", "6Qf883ukLDyz4OBepYF1");
		ShareSDK.setPlatformConfig (PlatformType.VKontakte, vkConf);
	}
	
	// Update is called once per frame
	void Update () 
	{
		if (Input.GetKeyDown(KeyCode.Escape)) {
			ShareSDK.close();
			Application.Quit();
		}
	}
	
	void OnGUI ()
	{
		GUI.skin = demoSkin;
		
		float scale = 1.0f;
		
		if (Application.platform == RuntimePlatform.IPhonePlayer)
		{
			scale = Screen.width / 320;
		}
		
		float btnWidth = 200 * scale;
		float btnHeight = 45 * scale;
		float btnTop = 20 * scale;
		GUI.skin.button.fontSize = Convert.ToInt32(16 * scale);
		
		if (GUI.Button(new Rect((Screen.width - btnWidth) / 2, btnTop, btnWidth, btnHeight), "Authorize"))
		{

			AuthResultEvent evt = new AuthResultEvent(AuthResultHandler);
			ShareSDK.authorize(PlatformType.SinaWeibo, evt);
		}
		
		btnTop += btnHeight + 20 * scale;
		if (GUI.Button(new Rect((Screen.width - btnWidth) / 2, btnTop, btnWidth, btnHeight), "Get User Info"))
		{
			GetUserInfoResultEvent evt = new GetUserInfoResultEvent(GetUserInfoResultHandler);
			ShareSDK.getUserInfo(PlatformType.SinaWeibo, evt);
		}
		
		btnTop += btnHeight + 20 * scale;
		if (GUI.Button(new Rect((Screen.width - btnWidth) / 2, btnTop, btnWidth, btnHeight), "Show Share Menu"))
		{
			Hashtable content = new Hashtable();
			content["content"] = "this is a test string.";
			content["image"] = "http://img.baidu.com/img/image/zhenrenmeinv0207.jpg";
			content["title"] = "test title";
			content["description"] = "test description";
			content["url"] = "http://sharesdk.cn";
			content["type"] = Convert.ToString((int)ContentType.News);
			content["siteUrl"] = "http://sharesdk.cn";
			content["site"] = "ShareSDK";
			content["musicUrl"] = "http://mp3.mwap8.com/destdir/Music/2009/20090601/ZuiXuanMinZuFeng20090601119.mp3";
			
			ShareResultEvent evt = new ShareResultEvent(ShareResultHandler);
			ShareSDK.showShareMenu (null, content, 100, 100, MenuArrowDirection.Up, evt);
		}
		
		btnTop += btnHeight + 20 * scale;
		if (GUI.Button(new Rect((Screen.width - btnWidth) / 2, btnTop, btnWidth, btnHeight), "Show Share View"))
		{
			Hashtable content = new Hashtable();
			content["content"] = "this is a test string.";
			content["image"] = "http://img.baidu.com/img/image/zhenrenmeinv0207.jpg";
			content["title"] = "test title";
			content["description"] = "test description";
			content["url"] = "http://sharesdk.cn";
			content["type"] = Convert.ToString((int)ContentType.News);
			content["siteUrl"] = "http://sharesdk.cn";
			content["site"] = "ShareSDK";
			content["musicUrl"] = "http://mp3.mwap8.com/destdir/Music/2009/20090601/ZuiXuanMinZuFeng20090601119.mp3";
			
			ShareResultEvent evt = new ShareResultEvent(ShareResultHandler);
			ShareSDK.showShareView (PlatformType.Any, content, evt);
		}
		
		btnTop += btnHeight + 20 * scale;
		if (GUI.Button(new Rect((Screen.width - btnWidth) / 2, btnTop, btnWidth, btnHeight), "Show Content"))
		{
			Hashtable content = new Hashtable();
			content["content"] = "this is a test string.";
			content["image"] = "http://img.baidu.com/img/image/zhenrenmeinv0207.jpg";
			content["title"] = "test title";
			content["description"] = "test description";
			content["url"] = "http://sharesdk.cn";
			content["type"] = Convert.ToString((int)ContentType.News);
			content["siteUrl"] = "http://sharesdk.cn";
			content["site"] = "ShareSDK";
			content["musicUrl"] = "http://mp3.mwap8.com/destdir/Music/2009/20090601/ZuiXuanMinZuFeng20090601119.mp3";
			
			ShareResultEvent evt = new ShareResultEvent(ShareResultHandler);
			ShareSDK.shareContent (PlatformType.SinaWeibo, content, evt);
		}
	}
	
	void AuthResultHandler(ResponseState state, PlatformType type, Hashtable error)
	{
		if (state == ResponseState.Success)
		{
			print ("success !");
		}
		else if (state == ResponseState.Fail)
		{
			print ("fail! error code = " + error["error_code"] + "; error msg = " + error["error_msg"]);
		}
		else if (state == ResponseState.Cancel) 
		{
			print ("cancel !");
		}
	}
	
	void GetUserInfoResultHandler (ResponseState state, PlatformType type, Hashtable user, Hashtable error)
	{
		if (state == ResponseState.Success)
		{
			print ("get user result :");
			print (MiniJSON.jsonEncode(user));
		}
		else if (state == ResponseState.Fail)
		{
			print ("fail! error code = " + error["error_code"] + "; error msg = " + error["error_msg"]);
		}
		else if (state == ResponseState.Cancel) 
		{
			print ("cancel !");
		}
	}
	
	void ShareResultHandler (ResponseState state, PlatformType type, Hashtable shareInfo, Hashtable error, bool end)
	{
		if (state == ResponseState.Success)
		{
			print ("share result :");
			print (MiniJSON.jsonEncode(shareInfo));
		}
		else if (state == ResponseState.Fail)
		{
			print ("fail! error code = " + error["error_code"] + "; error msg = " + error["error_msg"]);
		}
		else if (state == ResponseState.Cancel) 
		{
			print ("cancel !");
		}
	}
}
