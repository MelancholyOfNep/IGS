using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class ForceChangeScene: MonoBehaviour
{    
    public string LevelName;
    public string nextScenePlayerLocation;

    // Start is called before the first frame update
    void Start()
    {

    }

    public void ForceMoveScene()
    {
        GameObject.FindGameObjectWithTag("Manager").GetComponent<GameManager>().playerStartLocation = nextScenePlayerLocation;
        SceneManager.LoadScene(LevelName);
    }
}