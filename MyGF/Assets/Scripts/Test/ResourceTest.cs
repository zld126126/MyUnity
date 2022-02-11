using System.Runtime.Serialization.Formatters.Binary;
using System.IO;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using System.Xml.Serialization;

public class ResourceTest : MonoBehaviour
{
    // Use this for initialization
    void Start()
    {
        // 加载资源
        // AssetBundle assetBundle = AssetBundle.LoadFromFile(Application.streamingAssetsPath + "/attack");
        // GameObject gameObject = GameObject.Instantiate(assetBundle.LoadAsset<GameObject>("attack"));

        // GameObject gameObject = GameObject.Instantiate(AssetDatabase.LoadAssetAtPath<GameObject>("Assets/GameData/Prefabs/Attack.prefab"));

        // xml序列化
        SerializeTest();
        // bytes
        BinarySerializeTest();

        ReadTestAssets();
    }

    // Update is called once per frame
    void Update()
    {


    }

    TestSerializable NewSerializable()
    {
        TestSerializable testSerializable = new TestSerializable();
        testSerializable.Id = 1;
        testSerializable.Name = "测试";
        testSerializable.List = new List<int>();
        testSerializable.List.Add(2);
        testSerializable.List.Add(3);

        return testSerializable;
    }

    void XmlSerializable(TestSerializable testSerializable)
    {
        FileStream fs = new FileStream(Application.dataPath + "/test.xml", FileMode.Create, FileAccess.ReadWrite, FileShare.ReadWrite);
        StreamWriter sw = new StreamWriter(fs, System.Text.Encoding.UTF8);
        XmlSerializer xml = new XmlSerializer(testSerializable.GetType());
        xml.Serialize(sw, testSerializable);
        sw.Close();
        fs.Close();
    }

    TestSerializable DeXmlSerializable()
    {
        FileStream fs = new FileStream(Application.dataPath + "/test.xml", FileMode.Open, FileAccess.ReadWrite, FileShare.ReadWrite);
        XmlSerializer xs = new XmlSerializer(typeof(TestSerializable));
        TestSerializable testSerializable = (TestSerializable)xs.Deserialize(fs);
        fs.Close();
        return testSerializable;
    }

    void SerializeTest()
    {
        var s1 = NewSerializable();
        XmlSerializable(s1);

        var s2 = DeXmlSerializable();

        if (s1.Id == s2.Id)
        {
            Debug.Log("一模一样1");
        }
    }

    TestSerializable NewBinarySerialize()
    {
        TestSerializable testSerializable = new TestSerializable();
        testSerializable.Id = 1;
        testSerializable.Name = "测试";
        testSerializable.List = new List<int>();
        testSerializable.List.Add(2);
        testSerializable.List.Add(3);

        return testSerializable;
    }

    void BinarySerialize(TestSerializable serializable)
    {
        FileStream fs = new FileStream(Application.dataPath + "/test.bytes", FileMode.Create, FileAccess.ReadWrite, FileShare.ReadWrite);
        BinaryFormatter bf = new BinaryFormatter();
        bf.Serialize(fs, serializable);
        fs.Close();
    }

    // TestSerializable DeBinarySerialize()
    // {
    //     TextAsset textAsset = AssetDatabase.LoadAssetAtPath<TextAsset>("Assets/test.bytes");
    //     MemoryStream stream = new MemoryStream(textAsset.bytes);
    //     BinaryFormatter bf = new BinaryFormatter();
    //     TestSerializable testSerializable = (TestSerializable)bf.Deserialize(stream);
    //     stream.Close();
    //     return testSerializable;
    // }

    void BinarySerializeTest()
    {
        var s1 = NewBinarySerialize();
        BinarySerialize(s1);

        // var s2 = DeBinarySerialize();
        // if (s1.Id == s2.Id)
        // {
        //     Debug.Log("一模一样2");
        // }
    }

    void ReadTestAssets(){
        // AssetsSerialize assets = AssetDatabase.LoadAssetAtPath<AssetsSerialize>("Assets/Scripts/TestAssets.asset");
        // Debug.Log(assets.Name);
    }
}
