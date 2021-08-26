using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// 数学模型-贝塞尔曲线 2阶/3阶 [1阶等同于]
/// </summary>
namespace MathModel_Bezier
{
    public class BezierUtils
    {
        /// <summary>
        /// 1阶贝塞尔-根据T值，计算贝塞尔曲线上面相对应的点
        /// B(t)=(1-t)P0+tP1, t∈[0,1]
        /// </summary>
        /// <param name="t"></param>T值
        /// <param name="p0"></param>起始点
        /// <param name="p1"></param>目标点
        /// <returns></returns>根据T值计算出来的贝赛尔曲线点
        public static Vector3 CalculateCubicBezierPoint_1Rank(float t, Vector3 p0, Vector3 p1)
        {
            float u = 1 - t;
            return u * p0 + t * p1;
        }

        /// <summary>
        /// 2阶贝塞尔-获取存储贝塞尔曲线点的数组
        /// </summary>
        /// <param name="p0"></param>起始点
        /// <param name="p1"></param>目标点
        /// <returns></returns>存储贝塞尔曲线点的数组
        public static Vector3[] GetBeizerList_1Rank(Vector3 p0, Vector3 p1, int segmentNum)
        {
            Vector3[] path = new Vector3[segmentNum];
            for (int i = 1; i <= segmentNum; i++)
            {
                float t = i / (float)segmentNum;
                Vector3 pixel = CalculateCubicBezierPoint_1Rank(t, p0,
                    p1);
                path[i - 1] = pixel;
            }
            return path;
        }

        /// <summary>
        /// 2阶贝塞尔-根据T值，计算贝塞尔曲线上面相对应的点
        /// B(t)=(1-t)2P0+2t(1-t)P1+t2P2，t∈[0,1]
        /// </summary>
        /// <param name="t"></param>T值
        /// <param name="p0"></param>起始点
        /// <param name="p1"></param>控制点
        /// <param name="p2"></param>目标点
        /// <returns></returns>根据T值计算出来的贝赛尔曲线点
        public static Vector3 CalculateCubicBezierPoint_2Rank(float t, Vector3 p0, Vector3 p1, Vector3 p2)
        {
            float u = 1 - t;
            return u * u * p0 + 2 * u * t * p1 + t * t * p2;
        }

        /// <summary>
        /// 2阶贝塞尔-获取存储贝塞尔曲线点的数组
        /// </summary>
        /// <param name="p0"></param>起始点
        /// <param name="p1"></param>控制点1
        /// <param name="p2"></param>目标点
        /// <returns></returns>存储贝塞尔曲线点的数组
        public static Vector3[] GetBeizerList_2Rank(Vector3 p0, Vector3 p1, Vector3 p2, int segmentNum)
        {
            Vector3[] path = new Vector3[segmentNum];
            for (int i = 1; i <= segmentNum; i++)
            {
                float t = i / (float)segmentNum;
                Vector3 pixel = CalculateCubicBezierPoint_2Rank(t, p0,
                    p1, p2);
                path[i - 1] = pixel;
            }
            return path;
        }

        /// <summary>
        /// 3阶贝塞尔-根据T值，计算贝塞尔曲线上面相对应的点
        /// B(t) = P0 * (1-t)^3 + 3 * P1 * t * (1-t)^2 + 3 * P2 * t^2 * (1-t) + P3 * t^3, t ∈ [0,1]
        /// </summary>
        /// <param name="t"></param>T值
        /// <param name="p0"></param>起始点
        /// <param name="p1"></param>控制点1
        /// <param name="p2"></param>控制点2
        /// <param name="p3"></param>目标点
        /// <returns></returns>根据T值计算出来的贝赛尔曲线点
        public static Vector3 CalculateCubicBezierPoint_3Rank(float t,Vector3 p0, Vector3 p1, Vector3 p2, Vector3 p3)
        {
            float u = 1 - t;
            return u * (u * (u * p0 + t * p1) + t * (u * p1 + t * p2)) + t * (u * (u * p1 + t * p2) + t * (u * p2 + t * p3));
        }

        /// <summary>
        /// 3阶贝塞尔-获取存储贝塞尔曲线点的数组
        /// </summary>
        /// <param name="p0"></param>起始点
        /// <param name="p1"></param>控制点1
        /// <param name="p2"></param>控制点2
        /// <param name="p3"></param>目标点
        /// <param name="segmentNum"></param>采样点的数量
        /// <returns></returns>存储贝塞尔曲线点的数组
        public static Vector3[] GetBeizerList_3Rank(Vector3 p0, Vector3 p1, Vector3 p2, Vector3 p3, int segmentNum)
        {
            Vector3[] path = new Vector3[segmentNum];
            for (int i = 1; i <= segmentNum; i++)
            {
                float t = i / (float)segmentNum;
                Vector3 pixel = CalculateCubicBezierPoint_3Rank(t, p0,
                    p1, p2, p3);
                path[i - 1] = pixel;
            }
            return path;
        }
    }
}
