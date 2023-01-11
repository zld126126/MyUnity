using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PausePanel : MonoBehaviour
{
    private Animator anim;
    public GameObject button;

    private void Awake()
    {
        anim = GetComponent<Animator>();
    }


    public void Retry() {

        Time.timeScale = 1;
        UnityEngine.SceneManagement.SceneManager.LoadScene(2);
    }
    /// <summary>
    /// 点击了pause按钮
    /// </summary>
    public void Pause()
    {
        //1、播放pause动画  
        anim.SetBool("isPause", true);
        button.SetActive(false);
    }

 
    /// <summary>
    /// 点击了继续按钮
    /// </summary>
    public void Resume() {
        //1、播放resume动画
        Time.timeScale = 1;
        anim.SetBool("isPause", false);
    }

    public void Home()
    {
        Time.timeScale = 1;
        UnityEngine.SceneManagement.SceneManager.LoadScene(1);
    }


    /// <summary>
    /// pause动画播放完调用
    /// </summary>
    public void PauseAnimEnd() {
        Time.timeScale = 0;
    }
    /// <summary>
    /// resume动画播放完调用
    /// </summary>
    public void ResumeAnimEnd() {
        button.SetActive(true);
    }
   
}
