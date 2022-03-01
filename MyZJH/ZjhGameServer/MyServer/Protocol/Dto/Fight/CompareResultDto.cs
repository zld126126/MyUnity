using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Protocol.Dto.Fight
{
    /// <summary>
    /// 比牌结果传输模型
    /// </summary>
    [Serializable]
    public class CompareResultDto
    {
        public PlayerDto winDto;
        public PlayerDto loseDto;

        public void Change(PlayerDto winDto, PlayerDto loseDto)
        {
            this.winDto = winDto;
            this.loseDto = loseDto;
        }
    }
}
