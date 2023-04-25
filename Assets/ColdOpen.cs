using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ColdOpen : MonoBehaviour
{
    CommunicationSubject communicator;
    GameManager manager;

    private void Awake()
    {
        manager = GameObject.FindGameObjectWithTag("Manager").GetComponent<GameManager>();
        if (manager.chapter != 0)
            gameObject.SetActive(false);
        communicator = gameObject.GetComponent<CommunicationSubject>();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (manager.chapter != 0)
        {
            gameObject.SetActive(false);
            gameObject.GetComponent<Collider>().enabled = false;
        }
            

        else if (other.gameObject.tag == "Player")
            communicator.ColdOpen();
    }

    public void Chapter0Start()
    {
        gameObject.SetActive(false);
    }

    public void Chapter1Start()
    {
        manager.chapter = 1;
        gameObject.SetActive(false);
    }
}
