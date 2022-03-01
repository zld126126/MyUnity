using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Protocol.Code
{
    /// <summary>
    /// 匹配的子操作码
    /// </summary>
    public class MatchCode
    {
        public const int Enter_CREQ = 0;
        public const int Enter_SRES = 1;
        public const int Enter_BRO = 2;

        public const int Leave_CREQ = 3;
        public const int Leave_BRO = 4;

        public const int Ready_CREQ = 5;
        public const int Ready_BRO = 6;
        public const int UnReady_CREQ = 7;
        public const int UnReady_BRO = 8;

        public const int StartGame_BRO = 9;
    }
}
