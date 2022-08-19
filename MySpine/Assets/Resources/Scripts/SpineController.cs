using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Spine.Unity;
using Spine;
using System;

public class SpineController : MonoBehaviour
{
    public SkeletonAnimation skAnimation;
    private Action<bool> fCallback;
    private Spine.TrackEntry trackEntry;
    private string _currentStateName;

    private void Awake()
    {
        this.skAnimation = this.gameObject.GetComponentInChildren<SkeletonAnimation>();
    }
    
    private void LateUpdate()
    {
        if (!CanPlay())
        {
            return;
        }

        if (this._currentStateName != "" && !this.IsAnimPlaying(this._currentStateName))
        {
            this.PlayAnim(this._currentStateName);
        }
    }

    /// <summary>
    /// 是否可以播放
    /// </summary>
    /// <returns></returns>
    private bool CanPlay()
    {
        return this.skAnimation != null && this._currentStateName != "";
    }

    private void PlayAnim(string sStateName,Action<bool> back = null)
    {
        if (!CanPlay()) return;
        this.PlayState(sStateName,back);
    }

    private void OnSpineAnimationComplete(TrackEntry trackEntry)
    {
        this.fCallback?.Invoke(true);
        //this.fCallback = null;
    }

    private void OnSpineAnimationInterrupt(TrackEntry trackEntry)
    {
        this.fCallback?.Invoke(false);
        //this.fCallback = null;
    }

    /// <summary>
    /// 停止Spine
    /// </summary>
    public void Stop()
    {
        this.fCallback = null;
        this._currentStateName = "";
        this.trackEntry = null;
        this.gameObject.SetActive(false);
        
        skAnimation.AnimationState.SetEmptyAnimation(0, 0);
    }
    
    /// <summary>
    /// 播放Spine
    /// </summary>
    /// <param name="sStateName"></param>
    /// <param name="back"></param>
    public void PlayState(string sStateName,Action<bool> back = null)
    {
        if (sStateName == "")
        {
            return;
        }

        if (back != null)
        {
            this.fCallback = back;
        }

        this.gameObject.SetActive(true);
        this._currentStateName = sStateName;
        this.trackEntry = this.skAnimation.AnimationState.SetAnimation(0, sStateName, true);
        this.trackEntry.Complete -= OnSpineAnimationComplete;
        this.trackEntry.Complete += OnSpineAnimationComplete;
        this.trackEntry.Interrupt -= OnSpineAnimationInterrupt;
        this.trackEntry.Interrupt += OnSpineAnimationInterrupt;
    }

    /// <summary>
    /// 销毁Spine
    /// </summary>
    public void Destroy()
    {
        this.Stop();
        Destroy(this.gameObject);
    }
    
    /// <summary>
    /// 动画是否播放中
    /// </summary>
    /// <param name="nStateIdx"></param>
    /// <returns></returns>
    public bool IsAnimPlaying(string sStateName)
    {
        if (this.skAnimation == null) return false;
        if (this.skAnimation.AnimationState.GetCurrent(0) == null)
        {
            return false;
        }

        return this.skAnimation.AnimationState.GetCurrent(0).Animation.Name == sStateName;
    }
}