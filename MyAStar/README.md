# MyAStar
MyAStar
- [MyAStar](#myastar)
  - [官方地址:](#官方地址)
  - [A星寻路-三种方案](#a星寻路-三种方案)
  - [目前最优:对角线](#目前最优对角线)

## 官方地址:
    https://www.cnblogs.com/yangyxd/articles/5447889.html
    https://github.com/bgrins/javascript-astar

## A星寻路-三种方案
```
//曼哈顿估价法
private function manhattan(node:Node):Number
{
    return Math.abs(node.x - _endNode.x) * _straightCost + Math.abs(node.y + _endNode.y) * _straightCost;
}
 
//几何估价法
private function euclidian(node:Node):Number
{
    var dx:Number=node.x - _endNode.x;
    var dy:Number=node.y - _endNode.y;
    return Math.sqrt(dx * dx + dy * dy) * _straightCost;
}
 
//对角线估价法
private function diagonal(node:Node):Number
{
    var dx:Number=Math.abs(node.x - _endNode.x);
    var dy:Number=Math.abs(node.y - _endNode.y);
    var diag:Number=Math.min(dx, dy);
    var straight:Number=dx + dy;
    return _diagCost * diag + _straightCost * (straight - 2 * diag);
}
```

## 目前最优:对角线
    对于“曼哈顿算法”最贴切的描述莫过于孙燕姿唱过的那首成名曲“直来直往”，笔直的走，然后转个弯，再笔直的继续。

    “几何算法”的最好解释就是“勾股定理”，算出起点与终点之间的直线距离，然后乘上代价因子。

    “对角算法”综合了以上二种算法，先按对角线走，一直走到与终点水平或垂直平行后，再笔直的走。
