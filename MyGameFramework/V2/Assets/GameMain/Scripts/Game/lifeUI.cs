using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class lifeUI : MonoBehaviour
{
    public Button fuhuo;
    public Button close;
    // Start is called before the first frame update
    void Start()
    {
        fuhuo.onClick.AddListener(FuHuo);
        close.onClick.AddListener(Close);
    }

    // Update is called once per frame
    void Update()
    {
        
    }
    private void FuHuo()
    {
        AudioManager.Instance.PlaySound(Config.Click);
        PlayManager.Instance.Clear();
        LetterLogic.Instance.Clear();
        MainLogic.Instance.ClearBattleType();
        //删除苍蝇 本来苍蝇是暂停的  删掉了就不管了 要是不删 需要关闭暂停
        LetterLogic.Instance.DestroyAllFlyMouse();
        //关闭暂停功能
        //删除自己
        Destroy(gameObject);
    }
    private void Close()
    {
        AudioManager.Instance.PlaySound(Config.Click);
        //关闭暂停功能
        //删除自己
        Destroy(gameObject);
        MainLogic.Instance.SetVectoryOrDe(MainLogic.JieSuanType.Defeate);
    }
}
