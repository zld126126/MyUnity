using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Xml.Serialization;

[System.Serializable]
public class AssetBundleConfig
{
    [XmlElement("ABList")]
    public List<ABBase> ABList { get; set; }
}

[System.Serializable]
public class ABBase
{
    [XmlElement("Path")]
    public string Path { get; set; }
    [XmlElement("Crc")]
    public uint Crc { get; set; }
    [XmlElement("ABName")]
    public string ABName { get; set; }
    [XmlElement("AssetName")]
    public string AssetName { get; set; }
    [XmlElement("ABDependent")]
    public List<string> ABDependent { get; set; }
}