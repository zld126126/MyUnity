#coding=utf-8
#RUN:python MyMLAgents\tensorflow-anaconda\Examples\tf_example_01.py
import tensorflow as tf
import numpy as np
import matplotlib.pyplot as plt
print(tf.__version__)
tf.compat.v1.disable_v2_behavior()
# 生成模拟数据
train_X = np.linspace(-1,1,100)
train_Y = 2 * train_X + np.random.randn(*train_X.shape) * 0.3
# y = 2x,但是加入了噪声
# 显示为图形
plt.plot(train_X,train_Y,'ro',label='Original data')
plt.legend()
plt.show()
# ------增量------
# 创建模型
X = tf.compat.v1.placeholder("float") # 占位符
Y = tf.compat.v1.placeholder("float") 
# 模型参数
W = tf.Variable(tf.compat.v1.random_normal([1]),name="weight")
b = tf.Variable(tf.zeros([1]),name="bias")
# 正向结构
z = tf.multiply(X,W)+b