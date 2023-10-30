// Code from https://gist.github.com/mattatz/a8c697e212b653ca9ce966797bb93a3c :)

using UnityEngine;

#if UNITY_EDITOR
using UnityEditor;
#endif

using System.IO;
using System.Collections;
using System;

namespace com.ugandavrc
{

    public class GradientTexGen
    {

        public static Texture2D Create(Gradient grad, int width = 32, int height = 1)
        {
            var gradTex = new Texture2D(width, height, TextureFormat.ARGB32, false);
            gradTex.filterMode = FilterMode.Bilinear;
            float inv = 1f / width;
            for (int y = 0; y < height; y++)
            {
                for (int x = 0; x < width; x++)
                {
                    var t = x * inv;
                    Color col = grad.Evaluate(t);
                    gradTex.SetPixel(x, y, col);
                }
            }
            gradTex.Apply();
            return gradTex;
        }

    }

#if UNITY_EDITOR
    public class GradientTexCreator : EditorWindow
    {

        [SerializeField] Gradient gradient;
        [SerializeField] int width = 512;
        [SerializeField] int height = 16;
        [SerializeField] string fileName = "Gradient";

        [MenuItem("Legoman99573/GradientTex")]
        static void Init()
        {
            EditorWindow.GetWindow(typeof(GradientTexCreator));
        }

        void OnGUI()
        {
            this.minSize = new Vector2(400, 300);
            GUIStyle largeTitleStyle = new GUIStyle(EditorStyles.largeLabel);
            largeTitleStyle.fontSize = 15;
            largeTitleStyle.alignment = TextAnchor.MiddleCenter;
            largeTitleStyle.fixedHeight = 25;

            EditorGUILayout.LabelField("Gradient Texture Generator", largeTitleStyle);
            EditorGUI.BeginChangeCheck();
            titleContent = new GUIContent("Gradient Texture Generator");
            SerializedObject so = new SerializedObject(this);
            EditorGUILayout.PropertyField(so.FindProperty("gradient"), true, null);
            EditorGUILayout.HelpBox("Not in Light View <--> In Light View", MessageType.Info);
            if (EditorGUI.EndChangeCheck())
            {
                so.ApplyModifiedProperties();
            }

            using (new GUILayout.HorizontalScope())
            {
                GUILayout.Label("width", GUILayout.Width(80f));
                int.TryParse(GUILayout.TextField(width.ToString(), GUILayout.Width(120f)), out width);
            }

            using (new GUILayout.HorizontalScope())
            {
                GUILayout.Label("height", GUILayout.Width(80f));
                int.TryParse(GUILayout.TextField(height.ToString(), GUILayout.Width(120f)), out height);
            }

            using (new GUILayout.HorizontalScope())
            {
                GUILayout.Label("name", GUILayout.Width(80f));
                fileName = GUILayout.TextField(fileName, GUILayout.Width(120f));
                GUILayout.Label(".png");
            }
            EditorGUILayout.HelpBox("Note to change the name to prevent accidential overriding.", MessageType.Warning);

            if (GUILayout.Button("Save"))
            {
                string path = EditorUtility.SaveFolderPanel("Select an output path", "Assets/Legoman99573 Toon Shader/ramps" +
                    "", "");
                if (path.Length > 0)
                {
                    if (File.Exists(path + "/" + fileName + ".png"))
                    {
                        EditorUtility.DisplayDialog("Gradient Texture Generator", "An Unknown Error has occured. \nFile already exists!", "OK");
                        return;
                    }
                    var tex = GradientTexGen.Create(gradient, width, height);
                    byte[] pngData = tex.EncodeToPNG();
                    try
                    {
                        File.WriteAllBytes(path + "/" + fileName + ".png", pngData);
                        EditorUtility.DisplayDialog("Gradient Texture Generator", "File Saved!", "OK");
                    } catch (Exception e)
                    {
                        EditorUtility.DisplayDialog("Gradient Texture Generator", "An Unknown Error has occured. \nStacktrace: \n" + e.Message, "OK");
                    }
                    AssetDatabase.Refresh();
                }
            }
        }
    }
#endif

}