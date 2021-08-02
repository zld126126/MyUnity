# MyAStar
MyAStar
- [MyAStar](#myastar)
  - [官方地址:](#官方地址)
  - [A星寻路-三种方案](#a星寻路-三种方案)
  - [目前最优:对角线](#目前最优对角线)
  - [A星寻路思路:](#a星寻路思路)
    - [1.搜索区域](#1搜索区域)
    - [2.计算路径](#2计算路径)
    - [3.代码方案](#3代码方案)
  - [其他:](#其他)

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

## A星寻路思路:
### 1.搜索区域
    抽象为n*y个格子[二维数组]

    一个记录所有被考虑来寻找最短路径的格子列表,另一个不会被考虑的格子列表

### 2.计算路径
    节点(Node)：每个格子都可以称为节点。

    代价(Cost)：描述角色移动到某个节点时所走的距离（或难易程度）。

    寻路中的总代价f = 从指定节点到相邻节点代价g + 从指定节点到目标节点估算代价h

### 3.代码方案
    1.封装网格类
        1.1 初始化网格(多个节点构建网格)
        1.2 根据坐标返回节点
        1.3 获取周围节点(列表)
        1.4 更新路径

    2.封装寻路类
        1.1 A星寻路
        1.2 获取两个节点距离
        1.3 生成路径(辅助)

    3.物体移动类(辅助)

## 其他:
    示例图片见Resources文件夹中的"AStar".Png    
