using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

public class InvestigationManager : MonoBehaviour
{
    [System.Serializable]
    public class items
    {
        public string name;
        public int val;
    }

    public static Dictionary<string, int> evidence = new Dictionary<string, int>();

    public static void RegisterInformation(items x)
    {
        if (evidence.ContainsKey(x.name))
        {
            evidence[x.name] = x.val;
        }
        else
        {
            evidence.Add(x.name, x.val);
        }
    }
}
