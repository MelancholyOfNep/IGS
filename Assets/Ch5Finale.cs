using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Ch5Finale : MonoBehaviour
{
    GameManager manager;
    CommunicationSubject communicator;

    private void Awake()
    {
        manager = GameObject.FindGameObjectWithTag("Manager").GetComponent<GameManager>();
        if (manager.chapter != 5)
            gameObject.SetActive(false);
        communicator = gameObject.GetComponent<CommunicationSubject>();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
            communicator.ColdOpen();
    }
}
