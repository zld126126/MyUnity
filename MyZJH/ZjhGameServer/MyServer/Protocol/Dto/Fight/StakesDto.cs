using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Protocol.Dto.Fight
{
    /// <summary>
    /// 下注的传输模型
    /// </summary>
    [Serializable]
    public class StakesDto
    {
        public enum StakesType
        {
            NoLook,
            Look,
        }
        public int userId;
        public int remainCoin;
        public int stakesCount;
        public int stakesSum;
        public StakesType stakesType;

        public void Change(int userId, int remainCoin, int stakesCount, int stakesSum, StakesType stakesType)
        {
            this.userId = userId;
            this.remainCoin = remainCoin;
            this.stakesCount = stakesCount;
            this.stakesSum = stakesSum;
            this.stakesType = stakesType;
        }
    }
}
