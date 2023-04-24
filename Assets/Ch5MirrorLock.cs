using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Ch5MirrorLock : MonoBehaviour
{
	GameManager gameManager;
	[SerializeField]
	GameObject lwHOMDoor;
	[SerializeField]
	GameObject videoPlayer;

	private void Awake()
	{
		gameManager = GameObject.FindGameObjectWithTag("Manager").GetComponent<GameManager>();
		if (gameManager.chapter == 5)
		{
			videoPlayer.SetActive(false);
			lwHOMDoor.GetComponent<ChangeScene>().enabled = false;
			lwHOMDoor.GetComponent<BoxCollider>().isTrigger = false;
		}
	}
}
