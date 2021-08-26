# My ml-agents
> unity2019.4.25f1 && python 3.6.1 <br/>
https://github.com/Unity-Technologies/ml-agents/blob/main/docs/Installation.md#advanced-local-installation-for-development

    参考网址:
    https://blog.csdn.net/hao5119266/article/details/104115958

- [My ml-agents](#my-ml-agents)
  - [1.安装步骤:](#1安装步骤)
    - [1.1 Clone the ML-Agents Toolkit Repository](#11-clone-the-ml-agents-toolkit-repository)
    - [1.2 Install the com.unity.ml-agents Unity package](#12-install-the-comunityml-agents-unity-package)
    - [1.3 Install the com.unity.ml-agents.extensions Unity package (Optional)](#13-install-the-comunityml-agentsextensions-unity-package-optional)
    - [1.4 Install the mlagents Python package](#14-install-the-mlagents-python-package)
  - [2.运行步骤:](#2运行步骤)
    - [2.1 unity2019.4打开ml-agents/Project文件夹](#21-unity20194打开ml-agentsproject文件夹)
    - [2.2 选择菜单Edit > Project Settings > Player](#22-选择菜单edit--project-settings--player)
    - [2.3 选择对应平台：PC、IOS或者Android均可，并且运行环境选择(.NET 4.6 Equivalent 或者 .NET 4.x Equivalent)](#23-选择对应平台pcios或者android均可并且运行环境选择net-46-equivalent-或者-net-4x-equivalent)
  - [3.测试环境:](#3测试环境)
    - [3.1 命令行:](#31-命令行)
    - [3.2 测试3DBall:](#32-测试3dball)

## 1.安装步骤:
### 1.1 Clone the ML-Agents Toolkit Repository 
    git clone --branch release_18 https://github.com/Unity-Technologies/ml-agents.git

### 1.2 Install the com.unity.ml-agents Unity package
    1.2.1 navigating to the menu Window -> Package Manager.
    1.2.2 Select Add package from disk...
    1.2.3 Navigate into the com.unity.ml-agents folder.
    1.2.4 Select the package.json file.

### 1.3 Install the com.unity.ml-agents.extensions Unity package (Optional)
    1.3.1 navigating to the menu Window -> Package Manager.
    1.3.2 Select Add package from disk...
    1.3.3 Navigate into the com.unity.ml-agents.extensions folder.
    1.3.4 Select the package.json file.

### 1.4 Install the mlagents Python package
    pip3 install torch~=1.7.1 -f https://download.pytorch.org/whl/torch_stable.html

    python -m pip install mlagents==0.27.0

    pip3 install torch -f https://download.pytorch.org/whl/torch_stable.html

    需要到git下载的目录/ml-agents下执行
    pip3 install -e ./ml-agents
    需要到git下载的目录/ml-agents-envs下执行
    pip3 install -e ./ml-agents-envs
    
## 2.运行步骤:
### 2.1 unity2019.4打开ml-agents/Project文件夹
### 2.2 选择菜单Edit > Project Settings > Player
### 2.3 选择对应平台：PC、IOS或者Android均可，并且运行环境选择(.NET 4.6 Equivalent 或者 .NET 4.x Equivalent)

## 3.测试环境:
### 3.1 命令行:
    mlagents-learn

### 3.2 测试3DBall:
    mlagents-learn config/ppo/3DBall.yaml --run-id=3DBall --train

    mlagents-learn config/ppo/3DBall.yaml --run-id=3DBall --train --force