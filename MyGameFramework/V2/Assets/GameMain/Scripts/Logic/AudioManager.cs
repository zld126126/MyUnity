using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioManager : MonoSingleton<AudioManager>
{
    //音乐播放器
    public AudioSource MusicPlayer;

    //音效播放器
    public AudioSource SoundPlayer;

    public void Start()
    {
    }

    public void Init()
    {
        MusicPlayer = gameObject.AddComponent<AudioSource>();
        MusicPlayer.playOnAwake = false; //先不播放
        MusicPlayer.loop = true; //循环播放
        SoundPlayer = gameObject.AddComponent<AudioSource>();
    }

    // Update is called once per frame
    void Update()
    {
    }

    //播放音乐
    public void PlayMusic(string name)
    {
        // if(MusicPlayer.isPlaying == false)
        // {
        //     AudioClip clip = Resources.Load<AudioClip>(name);
        //     MusicPlayer.clip = clip;
        //     MusicPlayer.Play();
        // }

        string oldName;
        if (MusicPlayer.clip == null)
        {
            oldName = "";
        }
        else
        {
            oldName = MusicPlayer.clip.name;
        }

        //判断是否正在播放
        if (oldName != name)
        {
            //加载资源 clip
            //string path = ResourcesDir + "/" + name;
            AudioClip clip = Resources.Load<AudioClip>(name);
            //播放
            if (clip != null)
            {
                MusicPlayer.clip = clip;
                MusicPlayer.Play();
            }
        }
    }

    //播放音效
    public AudioClip PlaySound(string name)
    {
        if (SoundPlayer.clip && SoundPlayer.clip.name == name)
        {
            SoundPlayer.Stop();
            SoundPlayer.PlayOneShot(SoundPlayer.clip);
            return SoundPlayer.clip;
        }

        AudioClip clip = Resources.Load<AudioClip>(name);
        SoundPlayer.clip = clip;
        SoundPlayer.PlayOneShot(clip);
        return clip;
    }

    public void StopSound(AudioClip clip)
    {
        if (clip != null)
        {
            //SoundPlayer.Stop()
        }
    }
}