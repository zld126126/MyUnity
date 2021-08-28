# Tensorflow 2.X

## 1.安装 anaconda
    推荐[anaconda3 2020.02版本](https://mirrors.tuna.tsinghua.edu.cn/anaconda/archive/)

## 2.安装 tensorflow
    gpu:
        conda install tensorflow-gpu

    cpu:
        conda install tensorflow-cpu

## 3.python虚拟环境
    查看:
        conda info --envs
    安装:
        conda create --name tf21 python=3.7.6
    激活:
        conda activate tf21
    使用默认:
        conda deactivate    

## 4.训练模型
## 4.1 静态图模型1
```
    #coding=utf-8
    import tensorflow as tf
    import numpy as np
    import matplotlib.pyplot as plt
    print(tf._version_)
    tf.compat.v1.disable_v2_behavior()
    #生成模拟数据
    train_X = np.linspace(-1,1,100)
    train_Y = 2 * train_X + np.random.randn(*train_X.shape) * 0.3
    # y = 2x,但是加入了噪声
    # 显示为图形
    plt.plot(train_X,train_Y,'ro',label='Original data')
    plt.legend()
    plt.show()
```
    运行结果如图:Example01.png

## 4.1 静态图模型2



## 5.问题
### 5.1 no module named tensorflow
    conda list 
    没有tensorflow numpy包

    conda install tensorflow
