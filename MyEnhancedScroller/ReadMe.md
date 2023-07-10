# EnhancedScroller v2.21.4 简单使用
## 1.处理UI
### 1.1 加入Canvas
### 1.2 Canvas/Scroller --> 空对象
### 1.3 Scroller加入组件 EnhancedScroller
### 1.4 拖拽Scroller
### 1.5 Scroller/GameObject --> 拖拽到Scroller组件ScrollRect下的Content中
### 1.6 Scroller Controller --> 空对象

## 2.处理CSharp
### 2.1 建立脚本 AnimalCellView.cs                //继承 EnhancedScrollerCellView。处理数据的布局和格式以及显示数据
### 2.2 建立脚本 ScrollerController.cs            //继承 MonoBehaviour, IEnhancedScrollerDelegate。
### 2.3 建立脚本 ScrollerData.cs                  //列表数据，每个Item的数据

## 3.处理UI->Item
### 3.1建立Cell View单元格Prefab 在GameObject下建立一个Panel
### 3.2将建立的脚本AnimalCellView.cs附加给这个Panel
### 3.3设置Cell Identifier。每个Prefab的 Cell Identifier是唯一的。

## 4.建立Scroller控制器
### 4.1点击ScrollerController对象，将ScrollerController.cs
### 4.2设置好对应的对象拖进ScrollerController