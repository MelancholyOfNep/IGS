using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Ch4MirrorLock : MonoBehaviour
{
    GameManager gameManager;
    [SerializeField]
    GameObject dwHOMDoor;
    [SerializeField]
    GameObject videoPlayer;

    private void Awake()
    {
        gameManager = GameObject.FindGameObjectWithTag("Manager").GetComponent<GameManager>();
        if (gameManager.chapter == 4)
        {
            if (!InvestigationManager.evidence.ContainsKey("ch4evidence0"))
                InvestigationManager.evidence.Add("ch4evidence0", 0);
            if (InvestigationManager.evidence["ch4evidence0"] != 1)
            {
                videoPlayer.SetActive(false);
                dwHOMDoor.GetComponent<ChangeScene>().enabled = false;
                dwHOMDoor.GetComponent<BoxCollider>().isTrigger = false;
            }
        }
    }
}
