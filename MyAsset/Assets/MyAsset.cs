using System;
using UnityEngine;
namespace MyAsset
{
    [Serializable]
    public enum UserAgeType
    {
        Unknown, // 错误类型
        Child, // 儿童
        Adult, // 成人
        Elder, // 老人
    }

    [Serializable]
    public enum UserSexType
    {
        Unknown, // 错误类型
        Male, // 雄性
        Female, // 雌性
    }

    [Serializable]
    public class User
    {
        public string Name;
        public UserAgeType AgeType;
        public UserSexType SexType;

        public User(string name, UserAgeType ageTp, UserSexType sexTp) {
            this.Name = name;
            this.AgeType = ageTp;
            this.SexType = sexTp;
        }

        public override string ToString()
        {
            return this.Name + "," + this.AgeType + "," + this.SexType;
        }
    }

    public class MyAsset : ScriptableObject
    {
        [SerializeField]
        public User Author = new User("东宝",UserAgeType.Adult,UserSexType.Male); 
    }

    public static class MyAssetHelper
    {
        private const string FolderPath = "Assets/Resources";

        private const string FileName = "MyAsset";

        public static string GetFilePath()
        {
            return string.Format("{0}/{1}.asset", FolderPath, FileName);
        }

        public static string GetFileName()
        {
            return FileName;
        }

        public static string GetFolderPath()
        {
            return FolderPath;
        }
    }
}
