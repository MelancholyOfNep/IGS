using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour
{
    public GameObject pauseBG;
    public bool paused = false;

    public SaveGame saveGame;

    private void Awake()
    {
        GameObject[] objs = GameObject.FindGameObjectsWithTag("Manager");

        if (objs.Length > 1)
        {
            Destroy(gameObject);
        }

        DontDestroyOnLoad(gameObject);
    }

    private SaveGame CreateSaveGameObject()
    {
        saveGame = new SaveGame();
        GameObject player = GameObject.FindWithTag("Player");
        saveGame.playerPositionX = player.transform.position.x;
        saveGame.playerPositionY = player.transform.position.y;
        saveGame.playerPositionZ = player.transform.position.z;
        saveGame.playerRotX = player.transform.rotation.eulerAngles.x;
        saveGame.playerRotY = player.transform.rotation.eulerAngles.y;
        saveGame.playerRotZ = player.transform.rotation.eulerAngles.z;
        saveGame.savedEvidence = InvestigationManager.evidence;
        saveGame.savedScene = SceneManager.GetActiveScene().name;
        return saveGame;
    }

    [SerializeField]
    public void Save()
    {
        saveGame = CreateSaveGameObject();

        BinaryFormatter bf = new BinaryFormatter();
        FileStream file = File.Create(Application.persistentDataPath + "/gamesave.save");
        bf.Serialize(file, saveGame);
        file.Close();
    }

    public void Load()
    {
        if (File.Exists(Application.persistentDataPath + "/gamesave.save"))
        {
            BinaryFormatter bf = new BinaryFormatter();
            FileStream file = File.Open(Application.persistentDataPath + "/gamesave.save", FileMode.Open);
            saveGame = (SaveGame)bf.Deserialize(file);
            file.Close();

            StartCoroutine(LoadSceneFromSave(saveGame.savedScene));
        }
        else
        {
            Debug.Log("No game save.");
        }
    }

    IEnumerator LoadSceneFromSave(string sceneToLoad)
    {
        AsyncOperation asyncLoad = SceneManager.LoadSceneAsync(sceneToLoad);

        while (!asyncLoad.isDone)
        {
            yield return null;
        }

        GameObject player = GameObject.FindWithTag("Player");
        player.transform.position = new Vector3(saveGame.playerPositionX, saveGame.playerPositionY, saveGame.playerPositionZ);
        player.transform.rotation = Quaternion.Euler(saveGame.playerRotX, saveGame.playerRotY, saveGame.playerRotZ);
        InvestigationManager.evidence = saveGame.savedEvidence;
        GameObject.FindGameObjectWithTag("Manager").GetComponent<GameManager>().pauseBG.SetActive(false);
        GameObject.FindGameObjectWithTag("Manager").GetComponent<GameManager>().paused = false;
    }
}
