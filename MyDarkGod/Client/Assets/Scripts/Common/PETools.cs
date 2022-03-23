/****************************************************
	文件：PETools.cs
	作者：SIKI学院——Plane
	邮箱: 1785275942@qq.com
	日期：2018/12/05 4:01   	
	功能：工具类
*****************************************************/


public class PETools {
    public static int RDInt(int min, int max, System.Random rd = null) {
        if (rd == null) {
            rd = new System.Random();
        }
        int val = rd.Next(min, max + 1);
        return val;
    }
}
