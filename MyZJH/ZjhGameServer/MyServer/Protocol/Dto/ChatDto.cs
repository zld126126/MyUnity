using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Protocol.Dto
{
    /// <summary>
    /// 聊天传输模型
    /// </summary>
    [Serializable]
    public class ChatDto
    {
        public int userId;
        public string userName;
        public string msg;

        public void Change(int userId, string userName, string msg)
        {
            this.userId = userId;
            this.userName = userName;
            this.msg = msg;
        }
    }
}
