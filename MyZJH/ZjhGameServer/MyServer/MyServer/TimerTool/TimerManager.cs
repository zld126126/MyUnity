using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Timers;

namespace MyServer.TimerTool
{
    /// <summary>
    /// 计时器任务管理类
    /// </summary>
    public class TimerManager
    {
        private static object objLock = new object();
        private static TimerManager instance = null;
        public static TimerManager Instance
        {
            get
            {
                lock (objLock)
                {
                    if (instance == null)
                    {
                        instance = new TimerManager();
                    }
                    return instance;
                }
            }
        }
        /// <summary>
        /// 计时器任务重要的类
        /// </summary>
        private Timer timer;
        /// <summary>
        /// 计时器任务数据模型id与模型映射字典
        /// </summary>
        private ConcurrentDictionary<int, TimerModel> idModelDic = new ConcurrentDictionary<int, TimerModel>();

        private ThreadSafeInt id = new ThreadSafeInt(-1);

        public TimerManager()
        {
            //1000毫秒 就是1秒
            timer = new Timer(1000);
            timer.Elapsed += Timer_Elapsed;
            timer.Start();
        }

        private void Timer_Elapsed(object sender, ElapsedEventArgs e)
        {
            foreach (var item in idModelDic.Values)
            {
                //100纳秒 千万分之一秒 
                if (DateTime.Now.Ticks >= item.time)
                {
                    item.Run();
                }
            }
        }
        /// <summary>
        /// 添加计时任务
        /// </summary>
        /// <param name="dealyTime"></param>
        /// <param name="td"></param>
        public void AddTimerEvent(float dealyTime, TimerDelegate td)
        {
            if (dealyTime <= 0) return;
            TimerModel model = new TimerModel(id.Add_Get(), DateTime.Now.Ticks + (long)(dealyTime * 10000000.0), td);
            idModelDic.TryAdd(model.id, model);
        }
        /// <summary>
        /// 清空字典
        /// </summary>
        public void Clear()
        {
            idModelDic.Clear();
        }
    }
}
