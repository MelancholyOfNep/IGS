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

	public void ChapterCheck()
	{
		Debug.Log("checked");
		if (chapter == 1)
		{
			string[] pieces = { "ch1Evidence0", "ch1Evidence1", "ch1Evidence2", "ch1Evidence3", "ch1Evidence4", "ch1Evidence5", "ch1Evidence6", "ch1Evidence7", "ch1Evidence8" };

            if (EvidenceCheck(pieces))
            {
                chapter = 2;
                OnCh2Start.Invoke();
            }
        }
		else if (chapter == 2)
		{
			Debug.Log("Chapter 3 not yet implemented. See ChapterCheck function under GameManager.cs.");

			// evidence pieces not present yet.
			/*string[] pieces = { };

			if(EvidenceCheck(pieces))
			{
				chapter = 3;
				// need to arrange the Ch3Start event. currently not actually implemented.
				OnCh3Start.Invoke();
			}*/
		}
	}

	public bool EvidenceCheck(string[] evidence)
	{
        foreach (string piece in evidence)
        {
            Debug.Log("ran");
            if (InvestigationManager.evidence.ContainsKey(piece))
            {
                if ((InvestigationManager.evidence.TryGetValue(piece, out int value) && value == 0))
                {
                    Debug.Log("False");
					return false;
                }
				else if ((InvestigationManager.evidence.TryGetValue(piece, out int valueA) && valueA == 1))
				{
					Debug.Log("True");
					return true;
				}
            }
            else
            {
                Debug.Log("False");
				return false;
            }
        }
		return false;
    }
}
