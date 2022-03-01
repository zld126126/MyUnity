using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Protocol.Code
{
    /// <summary>
    /// 战斗模块子操作码
    /// </summary>
    public class FightCode
    {
        /// <summary>
        /// 开始战斗的广播
        /// </summary>
        public const int StartFight_BRO = 0;
        public const int Leave_CREQ = 1;
        public const int Leave_BRO = 2;
        /// <summary>
        /// 开始下注的服务器广播
        /// </summary>
        public const int StartStakes_BRO = 3;

        /// <summary>
        /// 看牌的客户端请求
        /// </summary>
        public const int LookCard_CREQ = 4;
        public const int LookCard_BRO = 5;

        public const int Follow_CREQ = 6;
        public const int PutStakes_BRO = 7;
        /// <summary>
        /// 加注的客户端请求
        /// </summary>
        public const int AddStakes_CREQ = 8;
        /// <summary>
        /// 弃牌的客户端请求
        /// </summary>
        public const int GiveUpCard_CREQ = 9;
        public const int GiveUpCard_BRO = 10;

        public const int CompareCard_CREQ = 11;
        public const int CompareCard_BRO = 12;

        public const int GameOver_BRO = 13;

    }
}
