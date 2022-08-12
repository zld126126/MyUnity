using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class LetterItem : MonoBehaviour
{
    // Start is called before the first frame update
    private Button button;
    private AudioSource audio;
    void Start()
    {
        audio = gameObject.AddComponent<AudioSource>();
    }

    private string lvalue="";
    public Text tex;
    public void SetValue(string value)
    {
        button = GetComponent<Button>();
        button.onClick.AddListener(()=>
        {
            BindClick();
        });
        lvalue = value;
        tex.text = value;
        this.name = value;
    }
    private void BindClick()
    {
        if(lvalue=="")return;
        string value1 = lvalue.ToLower();
        //PlaySound();
        LetterLogic.Instance.ClearFly(value1);
    }

    private void  PlaySound()
    {
        AudioClip clip = Resources.Load<AudioClip>(Config.Hit);
        audio.clip = clip;
        audio.PlayOneShot(clip);
    }
    public void SetSize()
    {
        transform.GetComponent<RectTransform>().sizeDelta = new Vector2(290,80);
    }
}
