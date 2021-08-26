using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace MathModel_Archimedes
{
    public class ArchimedesDemo : MonoBehaviour
    {
        private int layerOrder = 0;
        private int _segmentNum = 50;

        // 绘制曲线
        LineRenderer lineRenderer;

        private void Awake()
        {
            lineRenderer = transform.GetComponent<LineRenderer>();
        }

        // Start is called before the first frame update
        void Start()
        {

        }

        void DrawSpiral()
        {
            Vector3[] l = ArchimedesUtils.GetArchimedesList(_segmentNum);

            lineRenderer.positionCount = l.Length;
            for (int i = 0; i < l.Length; i++)
            {
                lineRenderer.SetPosition(i, l[i]);
            }
        }

        private void OnGUI()
        {
            if (GUI.Button(new Rect(20, 40, 80, 20), "阿基米德螺旋"))
            {
                DrawSpiral();
            }
        }
    }
}
