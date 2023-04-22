using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour
{
	public GameObject pauseBG;
	public bool paused = false;
	public int chapter = 0;
	public bool isDarkWorld;
	public string playerStartLocation;

	public UnityEvent OnCh2Start;
	public UnityEvent OnCh3Start;

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
		saveGame.darkWorld = isDarkWorld;
		saveGame.ch = chapter;
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
		isDarkWorld = saveGame.darkWorld;
		chapter = saveGame.ch;
		GameObject.FindGameObjectWithTag("Manager").GetComponent<GameManager>().pauseBG.SetActive(false);
		GameObject.FindGameObjectWithTag("Manager").GetComponent<GameManager>().paused = false;
	}

	public bool EvidenceCheck(List<string> evidence)
	{
		foreach (string piece in evidence)
		{
			Debug.Log("ran");
			if (!InvestigationManager.evidence.ContainsKey(piece) || InvestigationManager.evidence[piece] != 1)
			{
				Debug.Log("False");
				return false;
			}
		}
		return true;
	}

	public void ChapterCheck()
	{
		Debug.Log("checked");

		/*
		if (chapter == 1)
		{
            List<string> pieces = new List<string>() { "ch1Evidence0", "ch1Evidence1", "ch1Evidence2", "ch1Evidence3", "ch1Evidence4", "ch1Evidence5", "ch1Evidence6", "ch1Evidence7", "ch1Evidence8" };

            if (EvidenceCheck(pieces))
            {
                chapter = 2;
                OnCh2Start.Invoke();
            }
        }
		else if (chapter == 2)
		{
            // evidence 1 not needed because not incredibly relevant and also obscure.
            List<string> pieces2 = new List<string>() { "ch2Evidence0", "ch2Evidence2", "ch2Evidence3", "ch2Evidence4", "ch2Evidence5", "ch2Evidence6", "ch2Evidence7" };

            if (EvidenceCheck(pieces2))
            {
                chapter = 3;
                // need to arrange the Ch3Start event. currently not actually implemented.
                OnCh3Start.Invoke();
                Debug.Log("Chapter 3 start!");
            }
        }
		else if (chapter == 3)
		{
            List<string> pieces3 = new List<string>() { "chEvidence0", "ch3Evidence1" };

            if (EvidenceCheck(pieces3))
            {
                chapter = 4;
                Debug.Log("Chapter 4 start!");
            }
        }
		else if (chapter == 4)
		{
            List<string> pieces4 = new List<string>() { "ch4Evidence0" };

            if (EvidenceCheck(pieces4))
            {
                chapter = 5;
                Debug.Log("Chapter 5 start!");
            }
        }*/

		switch (chapter)
		{
			case 1:
                List<string> pieces = new List<string>() { "ch1Evidence0", "ch1Evidence1", "ch1Evidence2", "ch1Evidence3", "ch1Evidence4", "ch1Evidence5", "ch1Evidence6", "ch1Evidence7", "ch1Evidence8" };

                if (EvidenceCheck(pieces))
                {
                    chapter = 2;
                    OnCh2Start.Invoke();
                }
				break;
			case 2:
                // evidence 1 not needed because not incredibly relevant and also obscure.
                List<string> pieces2 = new List<string>() { "ch2Evidence0", "ch2Evidence2", "ch2Evidence3", "ch2Evidence4", "ch2Evidence5", "ch2Evidence6", "ch2Evidence7" };

                if (EvidenceCheck(pieces2))
                {
                    chapter = 3;
                    // need to arrange the Ch3Start event. currently not actually implemented.
                    OnCh3Start.Invoke();
                    Debug.Log("Chapter 3 start!");
                }
				break;
			case 3:
                List<string> pieces3 = new List<string>() { "chEvidence0", "ch3Evidence1" };

                if (EvidenceCheck(pieces3))
                {
                    chapter = 4;
                    Debug.Log("Chapter 4 start!");
                }
				break;
			case 4:
				List<string> pieces4 = new List<string>() { "ch4Evidence0" };

				if(EvidenceCheck(pieces4))
				{
					chapter = 5;
					Debug.Log("Chapter 5 start!");
				}
				break;
        }
	}
}