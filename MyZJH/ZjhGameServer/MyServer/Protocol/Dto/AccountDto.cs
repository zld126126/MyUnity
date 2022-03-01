using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Protocol.Dto
{
    /// <summary>
    /// 账号传输模型
    /// </summary>
    [Serializable]
    public class AccountDto
    {
        public string userName;
        public string password;

        public AccountDto(string userName, string password)
        {
            this.userName = userName;
            this.password = password;
        }
        public void Change(string userName, string password)
        {
            this.userName = userName;
            this.password = password;
        }
    }
}
