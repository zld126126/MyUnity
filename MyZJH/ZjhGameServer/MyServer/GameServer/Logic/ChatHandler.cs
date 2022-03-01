using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GameServer.Cache;
using GameServer.Cache.Fight;
using MyServer;
using Protocol.Code;
using Protocol.Dto;

namespace GameServer.Logic
{
    public class ChatHandler : IHandler
    {
        /// <summary>
        /// 匹配房间缓存
        /// </summary>
        private List<MatchCache> matchCaches = Caches.matchCacheList;
        /// <summary>
        /// 战斗缓存
        /// </summary>
        private FightCache fightCache = Caches.fightCache;
        /// <summary>
        /// 聊天传输模型
        /// </summary>
        private ChatDto chatDto = new ChatDto();

        public void Disconnect(ClientPeer client)
        {

        }

        public void Receive(ClientPeer client, int subCode, object value)
        {
            switch (subCode)
            {
                case ChatCode.CREQ:
                    Chat(client, value.ToString());
                    break;
                default:
                    break;
            }
        }
        /// <summary>
        /// 客户端聊天得请求处理
        /// </summary>
        /// <param name="client"></param>
        /// <param name="msg"></param>
        private void Chat(ClientPeer client, string msg)
        {
            SingleExecute.Instance.Execute(() =>
            {
                foreach (var matchCache in matchCaches)
                {
                    if (matchCache.IsMatching(client.Id))
                    {
                        MatchRoom room = matchCache.GetRoom(client.Id);
                        chatDto.Change(client.Id, client.UserName, msg);
                        room.Broadcast(OpCode.Chat, ChatCode.BRO, chatDto);
                    }
                }
                if (fightCache.IsFighting(client.Id) == false) return;

                FightRoom fightRoom = fightCache.GetFightRoomByUserId(client.Id);
                chatDto.Change(client.Id, client.UserName, msg);
                fightRoom.Broadcast(OpCode.Chat, ChatCode.BRO, chatDto);
            });
        }
    }
}
