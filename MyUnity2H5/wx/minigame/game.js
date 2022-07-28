import './weapp-adapter'
import unityNamespace from './unity-namespace'
import './webgl.wasm.framework.unityweb'
import "./unity-sdk/index.js"
import checkVersion, {canUseCoverview} from './check-version'
import "texture-config.js";
import {launchEventType} from './plugin-config'

function checkUpdate() {
  const updateManager = wx.getUpdateManager()

  updateManager.onCheckForUpdate(function (res) {
    // 请求完新版本信息的回调
    // console.log(res.hasUpdate)
  })

  updateManager.onUpdateReady(function () {
    wx.showModal({
      title: '更新提示',
      content: '新版本已经准备好，是否重启应用？',
      success: function (res) {
        if (res.confirm) {
          // 新的版本已经下载好，调用 applyUpdate 应用新版本并重启
          updateManager.applyUpdate()
        }
      }
    })
  })

  updateManager.onUpdateFailed(function () {
    // 新版本下载失败
  })
}

if (false) {
  checkUpdate()
}

let managerConfig = {
  DATA_FILE_MD5: "838c124e7112f16f",
  CODE_FILE_MD5: "305a7f1aaeeb4726",
  GAME_NAME: "webgl",
  APPID: "wxe827b5d66633c309",
  // DATA_FILE_SIZE: "$DATA_FILE_SIZE",
  LOADING_VIDEO_URL: "",
  DATA_CDN: "",
  // 资源包是否作为小游戏分包加载
  loadDataPackageFromSubpackage: true,

  // 需要在网络空闲时预加载的资源，支持如下形式的路径
  preloadDataList: [
    // 'DATA_CDN/StreamingAssets/WebGL/textures_8d265a9dfd6cb7669cdb8b726f0afb1e',
    // '/WebGL/sounds_97cd953f8494c3375312e75a29c34fc2'
    
  ],
  contextConfig: {
    contextType: 1  // 1=>webgl1  2=>webgl2 3=>auto
  }
};

GameGlobal.managerConfig = managerConfig;

// 版本检查
checkVersion().then(enable => {
  if (enable) {
    const UnityManager = requirePlugin('UnityPlugin', {
      enableRequireHostModule: true,
      customEnv: {
        wx,
        unityNamespace,
        document,
        canvas
      }
    }).default

    // JS堆栈能显示更完整
    Error.stackTraceLimit = Infinity;
    // 是否使用coverview作为启动页
    let USE_COVER_VIEW
    if (canUseCoverview()) {
      USE_COVER_VIEW = true
    } else {
      USE_COVER_VIEW = false
    }
    if (USE_COVER_VIEW) {
      managerConfig = {
        ...managerConfig,
        useCoverView: true,
	      // callmain结束后立即隐藏封面视频
	      hideAfterCallmain: true,
        loadingPageConfig: {
          // 背景图或背景视频，两者都填时，先展示背景图，视频可播放后，播放视频
          backgroundImage: 'images/background.jpg', // 不使用默认背景图可将此图片删除
          backgroundVideo: '',
          // 以下是默认值
          barWidth: 240, // 加载进度条宽度，默认240
          totalLaunchTime: 15000, // 默认总启动耗时，即加载动画默认播放时间，可根据游戏实际情况进行调整
          textDuration: 1500, // 当downloadingText有多个文案时，每个文案展示时间
          firstStartText: '首次加载请耐心等待', // 首次启动时提示文案
          downloadingText: ['正在加载资源'], // 加载阶段循环展示的文案
          compilingText: '编译中', // 编译阶段文案
          initText: '初始化中', // 初始化阶段文案
          completeText: '开始游戏', // 初始化完成
        }
      }
      GameGlobal.managerConfig = managerConfig;
    }

    const gameManager = new UnityManager(managerConfig);

    gameManager.onLaunchProgress((e) => {
      // e: LaunchEvent
      // interface LaunchEvent {
      //   type: LaunchEventType;
      //   data: {
      //     costTimeMs: number; // 阶段耗时
      //     runTimeMs: number; // 总耗时
      //     loadDataPackageFromSubpackage: boolean; // 首包资源是否通过小游戏分包加载
      //     isVisible: boolean; // 当前是否处于前台，onShow/onHide
      //     useCodeSplit: boolean; // 是否使用代码分包
      //     isHighPerformance: boolean; // 是否iOS高性能模式
      //     needDownloadDataPackage: boolean; // 本次启动是否需要下载资源包
      //   };
      // }
      if (e.type === launchEventType.launchPlugin) {

      }
      if (e.type === launchEventType.loadWasm) {

      }
      if (e.type === launchEventType.compileWasm) {

      }
      if (e.type === launchEventType.loadAssets) {

      }
      if (e.type === launchEventType.readAssets) {

      }
      if (e.type === launchEventType.prepareGame) {

      }
    })

    gameManager.assetPath = (managerConfig.DATA_CDN|| '').replace(/\/$/,'') + '/Assets';

    gameManager.onModulePrepared(() => {
      for(let key in unityNamespace) {
        if (!GameGlobal.hasOwnProperty(key)) {
          GameGlobal[key] = unityNamespace[key]
        } else {
        }
      }
    })


    // 上报初始化信息
    const systeminfo = wx.getSystemInfoSync();
    let bootinfo = {
      'renderer':systeminfo.renderer || '',
      'abi': systeminfo.ebi || '',
      'brand': systeminfo.brand,
      'model':systeminfo.model,
      'platform':systeminfo.platform,
      'system':systeminfo.system,
      'version':systeminfo.version,
      'SDKVersion':systeminfo.SDKVersion,
      'benchmarkLevel':systeminfo.benchmarkLevel,
    };
    wx.getRealtimeLogManager().info('game starting', bootinfo);
    wx.getLogManager().info('game starting', bootinfo);
    console.info('game starting', bootinfo);

     // 默认上报小游戏实时日志与用户反馈日志(所有error日志+小程序框架异常)
    wx.onError((result) => {gameManager.printErr(result.message)});
    gameManager.onLogError = function(err){
      GameGlobal.realtimeLogManager.error(err)
      GameGlobal.logmanager.warn(err)
    }
    gameManager.startGame();

    GameGlobal.manager = gameManager;
  }
})
