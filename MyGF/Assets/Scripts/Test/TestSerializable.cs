using System.Xml;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Xml.Serialization;

[System.Serializable]
public class TestSerializable
{
    [XmlAttribute("Id")]
    public int Id { get; set; }

    [XmlAttribute("Name")]
    public string Name { get; set; }

    // [XmlArray("List")]
    [XmlElement("List")]
    public List<int> List { get; set; }
}
