using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ReginaldDeactivate : MonoBehaviour
{
	GameManager manager;
	[SerializeField]
	GameObject reginald;

	// Start is called before the first frame update
	void Start()
	{
		manager = GameObject.FindGameObjectWithTag("Manager").GetComponent<GameManager>();
		if (manager.chapter != 5)
		{
			reginald.SetActive(false);
		}
	}

	public void ReginaldActivate()
	{
		reginald.SetActive(true);
	}
}
