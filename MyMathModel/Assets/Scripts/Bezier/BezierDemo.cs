using UnityEngine;
using System.Collections.Generic;
namespace MathModel_Bezier
{
    //[RequireComponent(typeof(LineRenderer))]
    public class BezierDemo : MonoBehaviour
    {
        private Transform StartPoint = null;
        private Transform ControlPoint1 = null;
        private Transform ControlPoint2 = null;
        private Transform EndPoint = null;

        private LineRenderer lineRenderer1 = null;
        private LineRenderer lineRenderer2 = null;
        private LineRenderer lineRenderer3 = null;

        private bool r1Show = false;
        private bool r2Show = false;
        private bool r3Show = false;

        private GameObject go_r1 = null;
        private GameObject go_r2 = null;
        private GameObject go_r3 = null;

        private int layerOrder = 0;
        private int _segmentNum = 50;

        private void Awake()
        {
            go_r1 = GameObject.Find("Bezier Manager/BezierRank1");
            lineRenderer1 = go_r1.GetComponent<LineRenderer>();
            lineRenderer1.sortingLayerID = layerOrder;

            go_r2 = GameObject.Find("Bezier Manager/BezierRank2");
            lineRenderer2 = go_r2.GetComponent<LineRenderer>();
            lineRenderer2.sortingLayerID = layerOrder;

            go_r3 = GameObject.Find("Bezier Manager/BezierRank3");
            lineRenderer3 = go_r3.GetComponent<LineRenderer>();
            lineRenderer3.sortingLayerID = layerOrder;

            go_r1 = GameObject.Find("Bezier Manager/BezierRank1");
            go_r2 = GameObject.Find("Bezier Manager/BezierRank2");
            go_r3 = GameObject.Find("Bezier Manager/BezierRank3");

            SetBezierRank(false);
        }

        void Show_Rank1()
        {
            SetBezierRank(false);
            go_r1.SetActive(true);

            StartPoint = GameObject.Find("Bezier Manager/BezierRank1/StartPoint").transform;
            EndPoint = GameObject.Find("Bezier Manager/BezierRank1/EndPoint").transform;
        }

        void DrawCurve_Rank1()
        {
            Vector3[] l = BezierUtils.GetBeizerList_1Rank(StartPoint.position,
                   EndPoint.position, _segmentNum);

            lineRenderer1.positionCount = l.Length;
            for (int i = 0; i < l.Length; i++)
            {
                lineRenderer1.SetPosition(i, l[i]);
            }
        }

        void Show_Rank2()
        {
            SetBezierRank(false);
            go_r2.SetActive(true);

            StartPoint = GameObject.Find("Bezier Manager/BezierRank2/StartPoint").transform;
            EndPoint = GameObject.Find("Bezier Manager/BezierRank2/EndPoint").transform;
            ControlPoint1 = GameObject.Find("Bezier Manager/BezierRank2/ControlPoint1").transform;
        }

        void DrawCurve_Rank2()
        {
            Vector3[] l = BezierUtils.GetBeizerList_2Rank(StartPoint.position, ControlPoint1.position,
                   EndPoint.position, _segmentNum);

            lineRenderer2.positionCount = l.Length;
            for (int i = 0; i < l.Length; i++)
            {
                lineRenderer2.SetPosition(i, l[i]);
            }
        }

        void Show_Rank3()
        {
            SetBezierRank(false);
            go_r3.SetActive(true);

            StartPoint = GameObject.Find("Bezier Manager/BezierRank3/StartPoint").transform;
            EndPoint = GameObject.Find("Bezier Manager/BezierRank3/EndPoint").transform;
            ControlPoint1 = GameObject.Find("Bezier Manager/BezierRank3/ControlPoint1").transform;
            ControlPoint2 = GameObject.Find("Bezier Manager/BezierRank3/ControlPoint2").transform;
        }

        void DrawCurve_Rank3()
        {
            Vector3[] l = BezierUtils.GetBeizerList_3Rank(StartPoint.position,
                ControlPoint1.position, ControlPoint2.position, EndPoint.position, _segmentNum);

            lineRenderer3.positionCount = l.Length;
            for (int i = 0; i < l.Length; i++)
            {
                lineRenderer3.SetPosition(i, l[i]);
            }
        }

        void SetBezierRank(bool f)
        {
            go_r1.SetActive(f);
            go_r2.SetActive(f);
            go_r3.SetActive(f);
        }

        private void OnGUI()
        {
            if (GUI.Button(new Rect(20, 40, 80, 20), "1阶贝塞尔"))
            {
                if (!r1Show) {
                    Show_Rank1();
                    DrawCurve_Rank1();
                }
                r1Show = !r1Show;
            }

            if (GUI.Button(new Rect(20, 70, 80, 20), "2阶贝塞尔"))
            {
                if (!r2Show)
                {
                    Show_Rank2();
                    DrawCurve_Rank2();
                }
                r2Show = !r2Show;
            }

            if (GUI.Button(new Rect(20, 100, 80, 20), "3阶贝塞尔"))
            {
                if (!r3Show)
                {
                    Show_Rank3();
                    DrawCurve_Rank3();
                }
                r3Show = !r3Show;
            }
        }

        void Update()
        {
            if (r3Show) {
                DrawCurve_Rank3();
            }

            if (r2Show)
            {
                DrawCurve_Rank2();
            }

            if (r1Show)
            {
                DrawCurve_Rank1();
            }
        }
    }
}
