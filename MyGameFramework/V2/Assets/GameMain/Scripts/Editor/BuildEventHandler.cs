#if UNITY_EDITOR
using System.IO;
using GameFramework;
using UnityEditor;
using UnityEngine;
using UnityGameFramework.Editor.ResourceTools;

public sealed class BuildEventHandler : IBuildEventHandler
{
    public bool ContinueOnFailure
    {
        get { return false; }
    }

    public void OnPreprocessAllPlatforms(string productName, string companyName, string gameIdentifier,
        string gameFrameworkVersion, string unityVersion, string applicableGameVersion, int internalResourceVersion,
        Platform platforms, AssetBundleCompressionType assetBundleCompression, string compressionHelperTypeName,
        bool additionalCompressionSelected, bool forceRebuildAssetBundleSelected, string buildEventHandlerTypeName,
        string outputDirectory, BuildAssetBundleOptions buildAssetBundleOptions,
        string workingPath, bool outputPackageSelected, string outputPackagePath, bool outputFullSelected,
        string outputFullPath, bool outputPackedSelected, string outputPackedPath, string buildReportPath)
    {
        string streamingAssetsPath = Utility.Path.GetRegularPath(Path.Combine(Application.dataPath, "StreamingAssets"));
        string[] fileNames = Directory.GetFiles(streamingAssetsPath, "*", SearchOption.AllDirectories);
        foreach (string fileName in fileNames)
        {
            if (fileName.Contains(".gitkeep"))
            {
                continue;
            }

            File.Delete(fileName);
        }

        Utility.Path.RemoveEmptyDirectory(streamingAssetsPath);
    }

    public void OnPostprocessAllPlatforms(string productName, string companyName, string gameIdentifier,
        string gameFrameworkVersion, string unityVersion, string applicableGameVersion, int internalResourceVersion,
        Platform platforms, AssetBundleCompressionType assetBundleCompression, string compressionHelperTypeName,
        bool additionalCompressionSelected, bool forceRebuildAssetBundleSelected, string buildEventHandlerTypeName,
        string outputDirectory, BuildAssetBundleOptions buildAssetBundleOptions,
        string workingPath, bool outputPackageSelected, string outputPackagePath, bool outputFullSelected,
        string outputFullPath, bool outputPackedSelected, string outputPackedPath, string buildReportPath)
    {
    }

    public void OnPreprocessPlatform(Platform platform, string workingPath, bool outputPackageSelected,
        string outputPackagePath, bool outputFullSelected, string outputFullPath, bool outputPackedSelected,
        string outputPackedPath)
    {
    }

    public void OnBuildAssetBundlesComplete(Platform platform, string workingPath, bool outputPackageSelected,
        string outputPackagePath, bool outputFullSelected, string outputFullPath, bool outputPackedSelected,
        string outputPackedPath, AssetBundleManifest assetBundleManifest)
    {
    }

    public void OnOutputUpdatableVersionListData(Platform platform, string versionListPath, int versionListLength,
        int versionListHashCode, int versionListCompressedLength, int versionListCompressedHashCode)
    {
    }

    public void OnPostprocessPlatform(Platform platform, string workingPath, bool outputPackageSelected,
        string outputPackagePath, bool outputFullSelected, string outputFullPath, bool outputPackedSelected,
        string outputPackedPath, bool isSuccess)
    {
        if (!outputPackageSelected)
        {
            return;
        }

        if (platform != Platform.Windows)
        {
            return;
        }

        string streamingAssetsPath = Utility.Path.GetRegularPath(Path.Combine(Application.dataPath, "StreamingAssets"));
        string[] fileNames = Directory.GetFiles(outputPackagePath, "*", SearchOption.AllDirectories);
        foreach (string fileName in fileNames)
        {
            string destFileName =
                Utility.Path.GetRegularPath(Path.Combine(streamingAssetsPath,
                    fileName.Substring(outputPackagePath.Length)));
            FileInfo destFileInfo = new FileInfo(destFileName);
            if (!destFileInfo.Directory.Exists)
            {
                destFileInfo.Directory.Create();
            }

            File.Copy(fileName, destFileName);
        }
    }
}
#endif