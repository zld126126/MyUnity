
using UnityEngine;

public abstract class MonoSingleton<T> : MonoBehaviour where T : MonoSingleton<T>,new()
{
    private static T mInstance = null;
    public static T Instance
    {
        get
        {
            if (mInstance == null)
            {
                mInstance = GameObject.FindObjectOfType<T>();
                if (mInstance == null)
                {    //创建游戏对象然后绑定单例脚本
                    GameObject go = new GameObject(typeof(T).Name);
                    mInstance = go.AddComponent<T>();
                    DontDestroyOnLoad(go);
                }
            }
            return mInstance;
        }
    }
    // Start is called before the first frame update
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {

    }
}
