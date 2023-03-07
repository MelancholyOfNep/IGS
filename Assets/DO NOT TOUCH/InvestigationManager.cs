using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using System.Runtime.Serialization.Formatters.Binary;
using System.IO;

public class InvestigationManager
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

    [SerializeField]
    private static SaveGame CreateSaveGameObject()
    {
        SaveGame saveGame = new SaveGame();
        GameObject player = GameObject.FindWithTag("Player");
        saveGame.playerPositionX = player.transform.position.x;
        saveGame.playerPositionY = player.transform.position.y;
        saveGame.playerPositionZ = player.transform.position.z;
        saveGame.playerRotX = player.transform.rotation.eulerAngles.x;
        saveGame.playerRotY = player.transform.rotation.eulerAngles.y;
        saveGame.playerRotZ = player.transform.rotation.eulerAngles.z;
        saveGame.savedEvidence = evidence;

        return saveGame;
    }

    [SerializeField]
    public static void Save()
    {
        SaveGame saveGame = CreateSaveGameObject();

        BinaryFormatter bf = new BinaryFormatter();
        FileStream file = File.Create(Application.persistentDataPath + "/gamesave.save");
        bf.Serialize(file, saveGame);
        file.Close();
    }

    public static void Load()
    {
        if(File.Exists(Application.persistentDataPath + "/gamesave.save"))
        {
            BinaryFormatter bf = new BinaryFormatter();
            FileStream file = File.Open(Application.persistentDataPath + "/gamesave.save", FileMode.Open);
            SaveGame saveGame = (SaveGame)bf.Deserialize(file);
            file.Close();

            GameObject player = GameObject.FindWithTag("Player");
            player.transform.position = new Vector3(saveGame.playerPositionX, saveGame.playerPositionY, saveGame.playerPositionZ);
            player.transform.rotation = Quaternion.Euler(saveGame.playerRotX, saveGame.playerRotY, saveGame.playerRotZ);
            evidence = saveGame.savedEvidence;
        }
        else
        {
            Debug.Log("No game save.");
        }
    }
}
