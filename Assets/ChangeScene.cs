using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class ChangeScene: MonoBehaviour
{    
    public string LevelName;
    public string nextScenePlayerLocation;

    // Start is called before the first frame update
    void Start()
    {

    }

    // Update is called once per frame
    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            GameObject.FindGameObjectWithTag("Manager").GetComponent<GameManager>().playerStartLocation = nextScenePlayerLocation;
            SceneManager.LoadScene(LevelName);
        }

    }
}