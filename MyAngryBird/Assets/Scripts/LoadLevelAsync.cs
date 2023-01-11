using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class LoadLevelAsync : MonoBehaviour {

    // Use this for initialization
    void Start() {
        Screen.SetResolution(960,600,false);
        Invoke("Load",2);
    }

    void Load() {
            SceneManager.LoadSceneAsync(1);
        }
    }

