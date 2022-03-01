using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Protocol.Code
{
    public class OpCode
    {
        /// <summary>
        /// 账号模块
        /// </summary>
        public const int Account = 0;
        /// <summary>
        /// 匹配模块
        /// </summary>
        public const int Match = 1;
        /// <summary>
        /// 聊天模块
        /// </summary>
        public const int Chat = 2;
        /// <summary>
        /// 战斗模块
        /// </summary>
        public const int Fight = 3;
    }
}
