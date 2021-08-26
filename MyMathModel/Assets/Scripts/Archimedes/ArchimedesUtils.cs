using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace MathModel_Archimedes
{
    public class ArchimedesUtils
    {
        // 公式参数
        static float paramA = 1;
        static float paramB = 1;
        static float paramAngle = 2 * Mathf.PI;
        static float spiralHeightAdded = 0.5f;

        public static Vector3 CalculateCubicArchimedesPoint(float angle)
        {
            //公式计算坐标
            float tempX = (paramA + paramB * angle) * Mathf.Cos(angle);
            float tempY = (paramA + paramB * angle) * Mathf.Sin(angle);
            //Z值增量
            float tempZ = spiralHeightAdded * angle;
            return new Vector3(tempX, tempY, tempZ);
        }

        public static Vector3[] GetArchimedesList(int segmentNum)
        {
            float drawAngle = 0;
            float perAngle = paramAngle / segmentNum;
            Vector3[] path = new Vector3[segmentNum];
            for (int i = 1; i <= segmentNum; i++)
            {
                if (drawAngle > paramAngle) {
                    break;
                }
                float t = i / (float)segmentNum;
                Vector3 pixel = CalculateCubicArchimedesPoint(drawAngle);
                path[i - 1] = pixel;
                drawAngle += perAngle;
            }
            return path;
        }
    }
}