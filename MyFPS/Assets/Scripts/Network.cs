// 网络脚本，里面有服务端和客户端

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;
using System.Net;
using System.Net.Sockets;

public class Network : MonoBehaviour {

	// Use this for initialization
	void Start () {
        // 获取人物组件
        mCharacter = transform.GetComponent<Character>();
        // 数据包大小
        _packageSize = PackageSize(); 
	}
	
	// Update is called once per frame
	void Update () {

	}

    // 网络设置UI
    void OnGUI() {
		GUI.Box (new Rect(0,0,800,60),"网络设置");

        if (_connected) {
		    GUI.Label (new Rect(10,25,100,25), _isServer ? "已建立服务端":"已连接服务端");
        } else if (!_connected) {
		    GUI.Label (new Rect(10,25,100,25), "未连接");
        }

		GUI.Label (new Rect(130,25,20,25), "IP:");
        GUI.Label (new Rect(270,25,40,25), "端口:");
        GUI.Label (new Rect(380,25,40,25), "ID:");

		if (!_connected && !_isServer) {
			_ip = GUI.TextField (new Rect (150, 25, 100, 25), _ip, 100);
            _port = System.Convert.ToInt32 (GUI.TextField (new Rect (310, 25, 50, 25), _port.ToString (), 100));
            _id = System.Convert.ToInt32 (GUI.TextField (new Rect (420, 25, 100, 25), _id.ToString(), 100));
		} else {
			GUI.TextField (new Rect (150, 25, 100, 25), _ip, 100);
            GUI.TextField (new Rect (310, 25, 50, 25), _port.ToString (), 100);
            GUI.TextField (new Rect (420, 25, 100, 25), _id.ToString(), 100);
        }

        if (!_connected && !_isServer) {
            if (GUI.Button(new Rect(540,25,100,25), "开启服务端")) {
                StartServer();
                ConnectServer();
            }

            if (GUI.Button(new Rect(660,25,100,25), "连接至服务端")) {
                ConnectServer();
            }
        } else {
            if (_isServer) {
                if (GUI.Button(new Rect(540,25,100,25), "关闭服务端")) {
                    StopServer();
                }
            } else if (_connected) {
                if (GUI.Button(new Rect(540,25,100,25), "取消连接")) {
                    DisconnectServer();
                }
            }
        }
	}

    // 服务端和客户端的共有变量
    private Character mCharacter; // 人物组件
    private bool _connected=false;  // 判断是否已经建立连接或开启服务端
    private bool _isServer=false;   // 判断本程序建立的是服务端还是客户端
    private string _ip = "127.0.0.1";           // 主机IP
    private int _port = 18000;             // 端口
    public int _id = 1 ;           // 人物id
    List<Package> _packages=new List<Package>();        // 数据包
    private int _packageSize;        // 数据包大小

    // 数据包
    [Serializable]
    public struct Package {
        public int id;
        public Vector3Serializer pos;   // 人物位置
        public Vector3Serializer rot;   // 人物旋转角度
        public Vector3Serializer cameraRot;     // 摄像头旋转角度
        public Vector3Serializer rightHandRot;  // 右手旋转角度
        public bool isShooted;      // 判断是否有开枪
        public int hp;      // 血量
    }

    // 获取包大小
    private int PackageSize() {
        Package p = new Package();
        byte[] b;
        Serialize(p, out b);
        return b.Length;
    }

    // 可序列化的Vector3
    [Serializable]
	public struct Vector3Serializer {
		public float x;
		public float y;
		public float z;

		public void Fill(Vector3 v3) {
			x = v3.x;
			y = v3.y;
			z = v3.z;
		}

		public Vector3 V3
		{ get { return new Vector3(x, y, z); } }
	}

    // 序列化数据包
    public bool Serialize(object obj, out byte[] result) {
        bool ret = false;
        result = null;

        try {
            MemoryStream ms = new MemoryStream();
            BinaryFormatter bf = new BinaryFormatter();
            bf.Serialize(ms, obj);
            result = ms.ToArray(); 
        
            ret = true;
        } catch (Exception e) {
            ret = false;
            Debug.Log(e.Message);
        }

        return ret;
    }

    // 反序列化数据包
    public bool Deserialize(byte[] data,out object result) {
        bool ret = false;
        result = new object();

        try {
            MemoryStream ms = new MemoryStream(data);
            BinaryFormatter bf = new BinaryFormatter();
            result = bf.Deserialize(ms);
        
            ret = true;
        } catch (Exception e) {
            ret = false;
            Debug.Log(e.Message);
        }

        return ret;
    }

    // 服务端变量
    TcpListener _listener;
    
    // 储存已连接客户的结构体
    private struct Client {
        public TcpClient client;
        public byte[] buffer;               // 接收缓冲区
        public List<byte> pendingData;    // 还未处理的数据
    }

    // 客户列表
    List<Client> _clients = new List<Client>();

    // 开启服务端
    private void StartServer() {
        try {
            _listener = new TcpListener(IPAddress.Any, _port);
            _listener.Start();
            _listener.BeginAcceptSocket(HandleAccepted, _listener);

            _isServer = true;
        } catch (Exception e) {
            Debug.Log(e.Message);
        }
    }

    // 停止停止服务端
    private void StopServer() {
        try {
            _listener.Stop();

            // 清空客户列表
            lock (_clients) {
                foreach (Client c in _clients) {
                    RemoveClient(c);
                }
                _clients.Clear();
            }

            // 清空数据包
            lock (_packages) {
                _packages.Clear();
            }
            
            _isServer = false;
        } catch (Exception e) {
            Debug.Log(e.Message);
        }
    }

    // 处理客户端连接的回调函数
    private void HandleAccepted(IAsyncResult iar) {
        if (_isServer) {
            TcpClient tcpClient = _listener.EndAcceptTcpClient(iar);
            Client client = new Client();
            client.client = tcpClient;
            client.buffer = new byte[tcpClient.ReceiveBufferSize];
            client.pendingData = new List<byte>();

            // 把客户加入到客户列表
            lock (_clients) {
                AddClient(client);
            }

            // 开始异步接收从客户端收到的数据
            tcpClient.GetStream().BeginRead(
                    client.buffer,
                    0,
                    client.buffer.Length,
                    HandleClientDataReceived,
                    client);

            // 开始异步接收连接
            _listener.BeginAcceptSocket(HandleAccepted, _listener);
        }
    }

    // 从客户端接收数据的回调函数
    private void HandleClientDataReceived(IAsyncResult iar) {
        try {
            if (_isServer) {
                Client client = (Client)iar.AsyncState;
                NetworkStream ns = client.client.GetStream();
                int bytesRead = ns.EndRead(iar);

                // 连接中断
                if (bytesRead == 0) {
                    lock (_clients) {
                        _clients.Remove(client);
                    }
                    return;
                }

                // 保存数据
                for (int i=0; i<bytesRead; ++i) {
                    client.pendingData.Add(client.buffer[i]);
                }

                // 把数据解析成包
                while (client.pendingData.Count >= _packageSize) {
                    byte[] bp = client.pendingData.GetRange(0, _packageSize).ToArray();
                    client.pendingData.RemoveRange(0, _packageSize);

                    // 把数据包分发给所有客户
                    lock(_clients) {
                        foreach (Client c in _clients) {
                            c.client.GetStream().Write(bp, 0, _packageSize);
                            c.client.GetStream().Flush();
                        }
                    }
                }

                // 开始异步接收从客户端收到的数据
                client.client.GetStream().BeginRead(
                        client.buffer,
                        0,
                        client.buffer.Length,
                        HandleClientDataReceived,
                        client);
            }
        } catch (Exception e) {
            Debug.Log(e.Message);
        }
    }

    // 加入客户
    private void AddClient(Client c) {
        _clients.Add(c);
    }

    // 删除客户
    private void RemoveClient(Client c) {
        c.client.Client.Disconnect(false);
    }

    // 客户端变量
    Client _server;

    // 连接至服务端
    private void ConnectServer() {
        try {
            TcpClient tcpServer = new TcpClient();
            tcpServer.Connect(_ip, _port);
            _server = new Client();
            _server.client = tcpServer;
            _server.buffer = new byte[tcpServer.ReceiveBufferSize];
            _server.pendingData = new List<byte>();
            
            // 异步接收服务端数据
            tcpServer.GetStream().BeginRead(
                _server.buffer, 
                0, 
                tcpServer.ReceiveBufferSize,
                HandleServerDataReceived,
                _server);

            _connected = true;
        } catch (Exception e) {
            Debug.Log(e.Message);
        }
    }

    // 从服务端断开
    private void DisconnectServer() {
        try {
            lock (_server.client) {
                _server.client.Client.Close();
            }

            // 清空数据包
            lock (_packages) {
                _packages.Clear();
            }

            // 删除所有客户人物模型
            mCharacter.RemoveAllEnemyCharacter();

            _connected = false;
        } catch (Exception e) {
            Debug.Log(e.Message);
        }
    }

    // 从服务端读取数据的回调函数
    private void HandleServerDataReceived(IAsyncResult iar) {
        if (_connected) {
            Client server = (Client)iar.AsyncState;
            NetworkStream ns = server.client.GetStream();
            int bytesRead = ns.EndRead(iar);
      
            // 连接中断
            if (bytesRead == 0) {
                DisconnectServer();
                return;
            }

            // 保存数据
            for (int i=0; i<bytesRead; ++i) {
                server.pendingData.Add(server.buffer[i]);
            }

            // 把数据解析成包
            while (server.pendingData.Count >= _packageSize) {
                byte[] bp = server.pendingData.GetRange(0, _packageSize).ToArray();
                server.pendingData.RemoveRange(0,_packageSize);

                // 把数据转换成包然后再储存包列表
                object obj;
                Deserialize(bp, out obj);

                lock (_packages) {
                    _packages.Add((Package)obj);
                }
            }

            // 异步接收服务端数据
            server.client.GetStream().BeginRead(
                server.buffer, 
                0, 
                server.client.ReceiveBufferSize,
                HandleServerDataReceived,
                server);
        }
    }
    
    // 发送自己的当前的状态包给服务端
    public void SendStatus(Vector3 pos, Vector3 rot,Vector3 cameraRot, 
        Vector3 rightHandRot, bool isShooted, int hp) {
        try {
            if (_connected) {     
                Package p = new Package();
                p.id = _id;
                p.pos.Fill(pos);
                p.rot.Fill(rot);
                p.cameraRot.Fill(cameraRot);
                p.rightHandRot.Fill(rightHandRot);
                p.isShooted = isShooted;
                p.hp = hp;

                // 发送包到服务端
                byte[] bp;
                Serialize(p, out bp);

                lock (_server.client) {
                    _server.client.GetStream().Write(bp, 0, _packageSize);
                    _server.client.GetStream().Flush();
                }
            }
        } catch (Exception e) {
            Debug.Log(e.Message);

            // 断开服务端
            DisconnectServer();
        }
    }

    // 获取包
    public bool NextPackage(out Package p) {
        lock (_packages) {
            if (_packages.Count == 0) {
                p = new Package();
                return false;
            }

            p = _packages[0];
            _packages.RemoveAt(0);
        }

        return true;
    }
}
