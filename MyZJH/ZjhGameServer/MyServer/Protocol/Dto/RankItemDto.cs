using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Protocol.Dto
{
    [Serializable]
    public class RankItemDto
    {
        public string UserName;
        public int CoinCount;

        public RankItemDto(string UserName, int CoinCount)
        {
            this.UserName = UserName;
            this.CoinCount = CoinCount;
        }
        public void Change(string UserName, int CoinCount)
        {
            this.UserName = UserName;
            this.CoinCount = CoinCount;
        }
    }
}
