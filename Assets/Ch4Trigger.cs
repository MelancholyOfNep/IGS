using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Ch4Trigger : MonoBehaviour
{
	GameManager manager;
	CommunicationSubject communicator;

	private void Awake()
	{
		manager = GameObject.FindGameObjectWithTag("Manager").GetComponent<GameManager>();
		if (manager.chapter != 3)
			gameObject.SetActive(false);
		communicator = gameObject.GetComponent<CommunicationSubject>();
	}
    private void OnTriggerEnter(Collider other)
    {
		communicator.ColdOpen();
    }

	public void Ch4Start()
	{
		manager.chapter = 4;
		gameObject.SetActive(false);
	}
}