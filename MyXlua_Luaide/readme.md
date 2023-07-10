- [MyXlua_Luaide-Lite](#myxlua_luaide-lite)
  - [1.安装](#1安装)
  - [2.配置](#2配置)
  - [3.使用](#3使用)
# MyXlua_Luaide-Lite
## 1.安装
> VSCODE->Extensions->luaide-lite v0.3.1安装
## 2.配置
.vscode\launch.json
```
{
    // 使用 IntelliSense 了解相关属性。 
    // 悬停以查看现有属性的描述。
    // 欲了解更多信息，请访问: https://go.microsoft.com/fwlink/?linkid=830387
    "version": "0.2.0",
    "configurations": [

        {
            "name": "Unity Editor",
            "type": "unity",
            "path": "${workspaceFolder}/Library/EditorInstance.json",
            "request": "launch"
        },

        {
            "name": "Unity-xlua",
            "type": "lua",
            "request": "attach",
            "runtimeType": "Unity",
            "localRoot": "${workspaceRoot}",
            "fileExtNames": [
                ".lua",
                ".txt",
                ".lua.txt",
                ".bytes"
            ],
            "port": 7003,
            "printType": 1
        },
    ]
}
```
## 3.使用
> 先打开debug->unity editor
> 后打开debug->unity-xlua
> 最后运行unity