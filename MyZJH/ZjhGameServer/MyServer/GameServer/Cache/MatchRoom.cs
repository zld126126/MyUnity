using MyServer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GameServer.Cache
{
    /// <summary>
    /// 匹配房间
    /// </summary>
    public class MatchRoom
    {
        /// <summary>
        /// 房间ID，唯一标识
        /// </summary>
        public int roomId { get; private set; }
        /// <summary>
        /// 房间内的玩家
        /// </summary>
        public List<ClientPeer> clientList { get; private set; }
        /// <summary>
        /// 房间内准备的玩家ID列表
        /// </summary>
        public List<int> readyUIdList { get; set; }

        public MatchRoom(int Id)
        {
            roomId = Id;
            clientList = new List<ClientPeer>();
            readyUIdList = new List<int>();
        }
        /// <summary>
        /// 获取房间是否满了
        /// </summary>
        /// <returns></returns>
        public bool IsFull()
        {
            return clientList.Count == 3;
        }
        /// <summary>
        /// 获取房间是否为空
        /// </summary>
        /// <returns></returns>
        public bool IsEmpty()
        {
            return clientList.Count == 0;
        }
        /// <summary>
        /// 获取是否全部玩家准备，如果返回值为True，既可以开始游戏了
        /// </summary>
        /// <returns></returns>
        public bool IsAllReady()
        {
            return readyUIdList.Count == 3;
        }
        /// <summary>
        /// 进入房间
        /// </summary>
        /// <param name="client"></param>
        public void Enter(ClientPeer client)
        {
            clientList.Add(client);
        }
        /// <summary>
        /// 离开房间
        /// </summary>
        /// <param name="client"></param>
        public void Leave(ClientPeer client)
        {
            clientList.Remove(client);
            if (readyUIdList.Contains(client.Id))
            {
                readyUIdList.Remove(client.Id);
            }
        }
        /// <summary>
        /// 准备
        /// </summary>
        /// <param name="userId"></param>
        public void Ready(int userId)
        {
            readyUIdList.Add(userId);
        }
        /// <summary>
        /// 取消准备
        /// </summary>
        /// <param name="userId"></param>
        public void UnReady(int userId)
        {
            readyUIdList.Remove(userId);
        }
        /// <summary>
        /// 广播发消息
        /// </summary>
        public void Broadcast(int opCode, int subCode, object value, ClientPeer exceptClient = null)
        {
            NetMsg msg = new NetMsg(opCode, subCode, value);
            byte[] data = EncodeTool.EncodeMsg(msg);
            byte[] packet = EncodeTool.EncodePacket(data);
            foreach (var client in clientList)
            {
                if (client == exceptClient)
                    continue;
                client.SendMsg(packet);
            }
        }
    }
}
