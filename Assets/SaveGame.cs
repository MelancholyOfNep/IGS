using JetBrains.Annotations;
using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

[System.Serializable]
public class SaveGame
{
    public float playerPositionX = new float();
    public float playerPositionY = new float();
    public float playerPositionZ = new float();
    public float playerRotX = new float();
    public float playerRotY = new float();
    public float playerRotZ = new float();
    public string savedScene;
    public bool darkWorld = new bool();
    public int ch = new int();
    public Dictionary<string, int> savedEvidence = new Dictionary<string, int>();
}
