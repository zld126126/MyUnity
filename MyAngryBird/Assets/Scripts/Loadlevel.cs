using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Loadlevel : MonoBehaviour {

    private void Awake()
    {
        Instantiate(Resources.Load(PlayerPrefs.GetString("nowLevel"))); 
    }
}
