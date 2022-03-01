using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GameServer.Cache.Fight
{
    /// <summary>
    /// 回合管理类
    /// </summary>
    public class RoundModel
    {
        /// <summary>
        /// 当前下注的玩家
        /// </summary>
        public int CurrentStakesUserId { get; set; }

        public RoundModel()
        {
            CurrentStakesUserId = -1;
        }
        public void Init()
        {
            CurrentStakesUserId = -1;
        }
        /// <summary>
        /// 开始下注
        /// </summary>
        /// <param name="userId"></param>
        public void Start(int userId)
        {
            CurrentStakesUserId = userId;
        }
        /// <summary>
        /// 轮换下注
        /// </summary>
        /// <param name="userId"></param>
        public void Turn(int userId)
        {
            CurrentStakesUserId = userId;
        }
    }
}
