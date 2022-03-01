using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Protocol.Dto.Fight
{
    /// <summary>
    /// 游戏结束传输模型
    /// </summary>
    [Serializable]
    public class GameOverDto
    {
        public PlayerDto winDto;
        public List<PlayerDto> loseDtoList;
        public int winCount;

        public GameOverDto()
        {
            loseDtoList = new List<PlayerDto>();
        }
        public void Change(PlayerDto winDto, List<PlayerDto> loseDtoList, int winCount)
        {
            this.winCount = winCount;
            this.winDto = winDto;
            this.loseDtoList = loseDtoList;
        }
    }
}
