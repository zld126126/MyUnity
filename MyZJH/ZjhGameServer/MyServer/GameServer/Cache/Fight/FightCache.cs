using MyServer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GameServer.Cache.Fight
{
    /// <summary>
    /// 战斗缓存
    /// </summary>
    public class FightCache
    {
        /// <summary>
        /// 玩家ID与战斗房间ID映射字典
        /// </summary>
        public Dictionary<int, int> userIdRoomIdDic = new Dictionary<int, int>();
        /// <summary>
        /// 战斗房间ID与房间的映射字典
        /// </summary>
        public Dictionary<int, FightRoom> roomIdModelDic = new Dictionary<int, FightRoom>();
        /// <summary>
        /// 战斗房间重用队列
        /// </summary>
        public Queue<FightRoom> roomQueue = new Queue<FightRoom>();
        /// <summary>
        /// 房间ID
        /// </summary>
        public ThreadSafeInt roomId = new ThreadSafeInt(-1);

        /// <summary>
        /// 创建房间
        /// </summary>
        /// <param name="clientList"></param>
        /// <returns></returns>
        public FightRoom CreatRoom(List<ClientPeer> clientList)
        {
            FightRoom room = null;
            if (roomQueue.Count > 0)
            {
                room = roomQueue.Dequeue();
                room.Init(clientList);
            }
            else
            {
                room = new FightRoom(roomId.Add_Get(), clientList);
            }
            foreach (var client in clientList)
            {
                userIdRoomIdDic.Add(client.Id, room.roomId);
            }
            roomIdModelDic.Add(room.roomId, room);
            return room;
        }
        /// <summary>
        /// 销毁房间
        /// </summary>
        /// <param name="room"></param>
        public void DestoryRoom(FightRoom room)
        {
            roomIdModelDic.Remove(room.roomId);
            foreach (var player in room.playerList)
            {
                userIdRoomIdDic.Remove(player.userId);
            }
            //初始化房间数据
            room.Destory();
            roomQueue.Enqueue(room);
        }
        /// <summary>
        /// 获取玩家是否在战斗
        /// </summary>
        /// <param name="userId"></param>
        /// <returns></returns>
        public bool IsFighting(int userId)
        {
            return userIdRoomIdDic.ContainsKey(userId);
        }
        /// <summary>
        /// 通过用户ID获取房间模型
        /// </summary>
        /// <param name="userId"></param>
        /// <returns></returns>
        public FightRoom GetFightRoomByUserId(int userId)
        {
            int roomId = userIdRoomIdDic[userId];
            return roomIdModelDic[roomId];
        }
    }
}
