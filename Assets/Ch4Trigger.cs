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
        {
            gameObject.SetActive(false);
            gameObject.GetComponent<Collider>().enabled = false;
        }
		communicator = gameObject.GetComponent<CommunicationSubject>();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            if (manager.chapter == 3)
            {
                List<string> pieces3 = new List<string>() { "ch3Evidence0", "ch3Evidence1" };

                if (EvidenceCheck(pieces3))
                {
                    manager.chapter = 4;
                    homDoor.SetActive(false);
                    Debug.Log("Chapter 4 start!");
                }
            }
            if (manager.chapter == 4)
                homDoor.SetActive(false);
        }
    }
    private bool EvidenceCheck(List<string> evidence)
    {
        foreach (string piece in evidence)
        {
            Debug.Log("ran");
            if (!InvestigationManager.evidence.ContainsKey(piece) || InvestigationManager.evidence[piece] != 1)
            {
                Debug.Log("False");
                return false;
            }
        }
        return true;
    }
}