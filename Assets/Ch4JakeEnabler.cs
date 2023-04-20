using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Ch4JakeEnabler : MonoBehaviour
{
    GameManager manager;

	[SerializeField]
    CommunicationSubject communicator;

    private void Awake()
    {
        manager = GameObject.FindGameObjectWithTag("Manager").GetComponent<GameManager>();
        if (manager.chapter != 4)
            gameObject.SetActive(false);
    }

    // Start is called before the first frame update
    void Start()
	{
		communicator.ColdOpen();
	}

	// Update is called once per frame
	void Update()
	{
		
	}
}
