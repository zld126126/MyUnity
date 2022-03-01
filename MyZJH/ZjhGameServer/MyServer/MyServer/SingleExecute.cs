using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace MyServer
{
    /// <summary>
    /// 一个要执行的方法
    /// </summary>
    public delegate void ExecuteDelegate();
    public class SingleExecute
    {
        private static object ob = new object();
        private static SingleExecute instance = null;
        public static SingleExecute Instance
        {
            get
            {
                lock (ob)
                {
                    if (instance == null)
                    {
                        instance = new SingleExecute();
                    }
                    return instance;
                }
            }
        }
        private object objLock = new object();

        /// <summary>
        /// 互斥锁
        /// </summary>
        private Mutex mutex;

        public SingleExecute()
        {
            mutex = new Mutex();
        }
        /// <summary>
        /// 单线程执行逻辑
        /// </summary>
        /// <param name="executeDelegate"></param>
        public void Execute(ExecuteDelegate executeDelegate)
        {
            lock (objLock)
            {
                mutex.WaitOne();
                executeDelegate();
                mutex.ReleaseMutex();
            }
        }
    }
}
