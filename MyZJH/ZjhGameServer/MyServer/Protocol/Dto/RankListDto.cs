using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Protocol.Dto
{
    [Serializable]
    public class RankListDto
    {
        public List<RankItemDto> rankList;

        public RankListDto()
        {
            rankList = new List<RankItemDto>();
        }
        public void Clear()
        {
            rankList.Clear();
        }
        public void Add(RankItemDto dto)
        {
            rankList.Add(dto);
        }
    }
}
