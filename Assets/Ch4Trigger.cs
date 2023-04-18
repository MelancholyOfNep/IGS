using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Ch4Trigger : MonoBehaviour
{
	GameManager manager;
	CommunicationSubject communicator;
	[SerializeField]
	GameObject homDoor;

	private void Awake()
	{
		manager = GameObject.FindGameObjectWithTag("Manager").GetComponent<GameManager>();
		if (manager.chapter != 3)
			gameObject.SetActive(false);
		communicator = gameObject.GetComponent<CommunicationSubject>();

	}

    private void OnTriggerEnter(Collider other)
    {
		if (manager.chapter == 3)
		{
			manager.ChapterCheck();
        }
		if (manager.chapter == 4)
			homDoor.SetActive(false);
    }
}