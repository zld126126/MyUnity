using EnhancedUI.EnhancedScroller;
using UnityEngine.UI;

public class AnimalCellView : EnhancedScrollerCellView
{
          public Text animalNameText;

          public void SetData(ScrollerData data)  //设置Prefab UI的数据，例如Text、Image
          {
                    animalNameText.text = data.animalName;
          }
}