using System.Collections;
using System.Collections.Generic;
using EnhancedUI.EnhancedScroller;
using UnityEngine;

public class ScrollerController : MonoBehaviour, IEnhancedScrollerDelegate
{
          private List<ScrollerData> _data;
          public EnhancedScroller myScroller;
          public AnimalCellView animalCellViewPrefab;

          void Start()
          {
                    _data = new List<ScrollerData>();
                    _data.Add(new ScrollerData() { animalName = "Lion" });
                    _data.Add(new ScrollerData() { animalName = "Bear" });
                    _data.Add(new ScrollerData() { animalName = "Eagle" });
                    _data.Add(new ScrollerData() { animalName = "Dolphin" });
                    _data.Add(new ScrollerData() { animalName = "Ant" });
                    _data.Add(new ScrollerData() { animalName = "Cat" });
                    _data.Add(new ScrollerData() { animalName = "Sparrow" });
                    _data.Add(new ScrollerData() { animalName = "Dog" });
                    _data.Add(new ScrollerData() { animalName = "Spider" });
                    _data.Add(new ScrollerData() { animalName = "Elephant" });
                    _data.Add(new ScrollerData() { animalName = "Falcon" });
                    _data.Add(new ScrollerData() { animalName = "Mouse" });

                    myScroller.Delegate = this;   //必须有这个
                    myScroller.ReloadData();     //加载数据到Item

          }


          public int GetNumberOfCells(EnhancedScroller scroller)
          {
                    return _data.Count;  //返回Item的数量。
          }

          public float GetCellViewSize(EnhancedScroller scroller, int dataIndex)
          {
                    return 100f;   //返回每个cell单元格的大小。如果横向滚动，这个数值指的是宽度；如果是竖向滚动，这个数值指的是高度。
          }

          public EnhancedScrollerCellView GetCellView(EnhancedScroller scroller, int dataIndex, int cellIndex)
          {
                    AnimalCellView cellView = scroller.GetCellView(animalCellViewPrefab) as AnimalCellView;  //生成GameObject，

                    cellView.SetData(_data[dataIndex]);           //设置Item的数据

                    return cellView; //设置好Prefab的EnhancedScrollerCellView 的数据，然后返回数据设置完成的EnhancedScrollerCellView
          }
}
