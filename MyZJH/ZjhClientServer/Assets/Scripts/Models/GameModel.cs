using Protocol.Dto;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// 游戏数据
/// </summary>
public class GameModel
{
    /// <summary>
    /// 用户信息
    /// </summary>
    public UserDto userDto { get; set; }
    /// <summary>
    /// 匹配房间传输模型
    /// </summary>
    public MatchRoomDto matchRoomDto { get; set; }
    /// <summary>
    /// 底注
    /// </summary>
    public int BottomStakes { get; set; }
    /// <summary>
    /// 顶注
    /// </summary>
    public int TopStakes { get; set; }
    /// <summary>
    /// 游戏房间类型
    /// </summary>
    public RoomType RoomType { get; set; }
}
