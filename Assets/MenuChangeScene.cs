using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MenuChangeScene : MonoBehaviour
{
    [SerializeField]
    string sceneSelected;
    [SerializeField]
    bool eraseEvidence;
    [SerializeField]
    bool loadingGame;

    public void SwitchScene()
    {
        Time.timeScale = 1.0f;
        if (eraseEvidence)
            InvestigationManager.evidence = new Dictionary<string, int>();
        if (loadingGame)
        {
            GameObject.FindGameObjectWithTag("Manager").GetComponent<GameManager>().Load();
            return;
        }
        StartCoroutine(AsyncSceneLoad());
    }

    IEnumerator AsyncSceneLoad()
    {
        AsyncOperation asyncLoad = SceneManager.LoadSceneAsync(sceneSelected);

        // Wait until the scene fully loads
        while (!asyncLoad.isDone)
            yield return null;
        GameObject.FindGameObjectWithTag("Manager").GetComponent<GameManager>().pauseBG.SetActive(false);
        GameObject.FindGameObjectWithTag("Manager").GetComponent<GameManager>().paused = false;
    }
}
