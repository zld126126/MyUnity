using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyServer.TimerTool
{
    /// <summary>
    /// 计时器到达时间后要执行的任务
    /// </summary>
    public delegate void TimerDelegate();
    /// <summary>
    /// 计时器任务数据模型
    /// </summary>
    public class TimerModel
    {
        public int id;
        /// <summary>
        /// 任务触发的时间
        /// </summary>
        public long time;
        private TimerDelegate timerDelegate;

        public TimerModel(int id,long time, TimerDelegate timerDelegate)
        {
            this.time = time;
            this.id = id;
            this.timerDelegate = timerDelegate;
        }
        /// <summary>
        /// 执行任务
        /// </summary>
        public void Run()
        {
            timerDelegate();
        }
    }
}
