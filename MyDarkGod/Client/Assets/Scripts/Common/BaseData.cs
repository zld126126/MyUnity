/****************************************************
	文件：BaseData.cs
	作者：SIKI学院——Plane
	邮箱: 1785275942@qq.com
	日期：2018/12/14 6:54   	
	功能：配置数据类
*****************************************************/

using UnityEngine;

public class MapCfg : BaseData<MapCfg> {
    public string mapName;
    public string sceneName;
    public Vector3 mainCamPos;
    public Vector3 mainCamRote;
    public Vector3 playerBornPos;
    public Vector3 playerBornRote;
}


public class BaseData<T> {
    public int ID;
}
