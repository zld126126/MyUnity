using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Sample : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        MyAsset.MyAsset _asset = Resources.Load<MyAsset.MyAsset>(MyAsset.MyAssetHelper.GetFileName());
        Debug.Log(_asset.Author.ToString());
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
