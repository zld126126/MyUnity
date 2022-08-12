using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayManager : MonoSingleton<PlayManager>
{
    private int _money = 0;
    public int money
    {
        get
        {
            if (UnityEngine.PlayerPrefs.HasKey("money"))
            {
                _money = UnityEngine.PlayerPrefs.GetInt("money");
                return _money;
            }

            return 0;
        }
        set
        {
            _money += value;
            UnityEngine.PlayerPrefs.SetInt("money", _money);
            PlayerPrefs.Save();
        }
    }
    private string _name = "";
    public string playername
    {
        get
        {
            if (UnityEngine.PlayerPrefs.HasKey("name"))
            {
                _name = UnityEngine.PlayerPrefs.GetString("name");
                return _name;
            }
            return _name;

        }
        set
        {
            _name = value;
            UnityEngine.PlayerPrefs.SetString("name", value);
            PlayerPrefs.Save();
        }
    }

    private int _hp = 3;
    public int HP
    {
        get
        {
            if (_hp < 0) _hp = 0;
            return _hp;
        }
        set
        {
            _hp += value;
        }
    }

    private int _level = 1;
    public int Level
    {
        get
        {
            if (UnityEngine.PlayerPrefs.HasKey("level"))
            {
                _level = UnityEngine.PlayerPrefs.GetInt("level");
                if(_level == 3)
                {
                    _level = 1;
                }
                return _level;
            }
            return _level;
        }
        set
        {
            _level += 1;
            if(_level == 3)
            {
                _level = 1;
            }
            UnityEngine.PlayerPrefs.SetInt("level", _level);
            PlayerPrefs.Save();
        }
    }

    private int _progress = 0;
    public int ProGress
    {
        get
        {
            if (UnityEngine.PlayerPrefs.HasKey("progress"))
            {
                _progress = UnityEngine.PlayerPrefs.GetInt("progress");
                return _progress;
            }
            return _progress;
        }
        set
        {
            _progress += value;
            if (_progress >= 100)
            {
                Level = 1;
                _progress = _progress - 100;
                UnityEngine.PlayerPrefs.SetInt("progress", _progress);
                PlayerPrefs.Save();
            }
            else
            {
                UnityEngine.PlayerPrefs.SetInt("progress", _progress);
                PlayerPrefs.Save();
            }

        }
    }
    private int _iszhendong = 0;
    public int Zhendong
    {
        get
        {
            if (UnityEngine.PlayerPrefs.HasKey("zhendong"))
            {
                return UnityEngine.PlayerPrefs.GetInt("zhendong");
            }
            return _iszhendong;
        }
        set
        {
            _iszhendong = value;
            UnityEngine.PlayerPrefs.SetInt("zhendong", _iszhendong);
            PlayerPrefs.Save();
        }
    }

    private int _ismusic = 0;
    public int Music
    {
        get
        {
            if (UnityEngine.PlayerPrefs.HasKey("music"))
            {
                return UnityEngine.PlayerPrefs.GetInt("music");
            }
            return _ismusic;
        }
        set
        {
            _ismusic = value;
            UnityEngine.PlayerPrefs.SetInt("music", _ismusic);
            PlayerPrefs.Save();
        }
    }

    private int _isShowSet = 0;
    public int ShowSet
    {
        get
        {
            if (UnityEngine.PlayerPrefs.HasKey("showset"))
            {
                return UnityEngine.PlayerPrefs.GetInt("showset");
            }
            return _isShowSet;
        }
        set
        {
            _isShowSet = value;
            UnityEngine.PlayerPrefs.SetInt("showset", _isShowSet);
            PlayerPrefs.Save();
        }
    }
    public void SetHP(int value)
    {
        _hp = value;
    }
    public void Start()
    {

    }


    public void Update()
    {

    }

    public void Clear()
    {
        _hp = 3;
        EventManager.Instance.TriggerEvent(Config.UIRefresh);  
    }
}
