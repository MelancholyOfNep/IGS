using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Ch4JakeConversation : MonoBehaviour
{
    GameManager manager;
    CommunicationSubject communicator;

    private void Awake()
    {
        manager = GameObject.FindGameObjectWithTag("Manager").GetComponent<GameManager>();
        if (manager.chapter != 4)
            gameObject.SetActive(false);
        communicator = gameObject.GetComponent<CommunicationSubject>();
    }

    private void OnTriggerEnter(Collider other)
    {
        communicator.ColdOpen();
    }
}