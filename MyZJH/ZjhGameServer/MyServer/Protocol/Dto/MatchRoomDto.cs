using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Protocol.Dto
{
    /// <summary>
    /// 匹配房间传输模型
    /// </summary>
    [Serializable]
    public class MatchRoomDto
    {
        /// <summary>
        /// 用户ID与该用户UserDto之间的映射字典
        /// </summary>
        public Dictionary<int, UserDto> userIdUserDtoDic { get; private set; }
        /// <summary>
        /// 准备的用户ID列表
        /// </summary>
        public List<int> readyUserIdList { get; set; }
        /// <summary>
        /// 进入房间顺序的用户ID列表
        /// </summary>
        public List<int> enterOrderUserIdList { get; private set; }
        /// <summary>
        /// 左边玩家ID
        /// </summary>
        public int LeftPlayerId { get; private set; }
        /// <summary>
        /// 右边玩家ID
        /// </summary>
        public int RightPlayerId { get; private set; }

        public MatchRoomDto()
        {
            userIdUserDtoDic = new Dictionary<int, UserDto>();
            readyUserIdList = new List<int>();
            enterOrderUserIdList = new List<int>();
        }
        /// <summary>
        /// 进入房间
        /// </summary>
        /// <param name="dto"></param>
        public void Enter(UserDto dto)
        {
            userIdUserDtoDic.Add(dto.UserId, dto);
            enterOrderUserIdList.Add(dto.UserId);
        }
        /// <summary>
        /// 离开
        /// </summary>
        /// <param name="userId"></param>
        public void Leave(int userId)
        {
            userIdUserDtoDic.Remove(userId);
            readyUserIdList.Remove(userId);
            enterOrderUserIdList.Remove(userId);
        }
        /// <summary>
        /// 准备
        /// </summary>
        /// <param name="userId"></param>
        public void Ready(int userId)
        {
            readyUserIdList.Add(userId);
        }
        /// <summary>
        /// 取消准备
        /// </summary>
        /// <param name="userId"></param>
        public void UnReady(int userId)
        {
            readyUserIdList.Remove(userId);
        }
        /// <summary>
        /// 重置位置，给三个玩家排序
        /// </summary>
        /// <param name="myUserId"></param>
        public void ResetPosition(int myUserId)
        {
            RightPlayerId = -1;
            LeftPlayerId = -1;

            if (enterOrderUserIdList.Count == 1)
                return;
            if (enterOrderUserIdList.Count == 2)
            {
                //x a
                if (enterOrderUserIdList[0] == myUserId)
                {
                    RightPlayerId = enterOrderUserIdList[1];
                }
                //a x
                if (enterOrderUserIdList[1] == myUserId)
                {
                    LeftPlayerId = enterOrderUserIdList[0];
                }
            }
            if (enterOrderUserIdList.Count == 3)
            {
                //x a b
                if (enterOrderUserIdList[0] == myUserId)
                {
                    RightPlayerId = enterOrderUserIdList[1];
                    LeftPlayerId = enterOrderUserIdList[2];
                }
                //a x b
                if (enterOrderUserIdList[1] == myUserId)
                {
                    RightPlayerId = enterOrderUserIdList[2];
                    LeftPlayerId = enterOrderUserIdList[0];
                }
                //a b x
                if (enterOrderUserIdList[2] == myUserId)
                {
                    RightPlayerId = enterOrderUserIdList[0];
                    LeftPlayerId = enterOrderUserIdList[1];
                }
            }
        }
    }
}
