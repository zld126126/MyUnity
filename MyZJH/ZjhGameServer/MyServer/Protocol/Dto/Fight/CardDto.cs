using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Protocol.Dto.Fight
{
    /// <summary>
    /// 卡牌传输模型
    /// </summary>
    [Serializable]
    public class CardDto
    {
        public string CardName { get; set; }
        public int Weight { get; set; }
        public int Color { get; set; }

        public CardDto(string cardName, int weight, int color)
        {
            this.CardName = cardName;
            this.Weight = weight;
            this.Color = color;
        }
    }
}
