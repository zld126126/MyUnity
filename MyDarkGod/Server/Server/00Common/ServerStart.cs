﻿/****************************************************
	文件：ServerStart.cs
	作者：SIKI学院——Plane
	邮箱: 1785275942@qq.com
	日期：2018/12/07 4:35   	
	功能：服务器入口
*****************************************************/

class ServerStart {
    static void Main(string[] args) {
        ServerRoot.Instance.Init();

        while (true) {
            ServerRoot.Instance.Update();
        }
    }
}
