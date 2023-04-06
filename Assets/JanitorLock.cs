using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class JanitorLock : MonoBehaviour
{
	GameObject janitorDoor;

	private void Awake()
	{
		if (!InvestigationManager.evidence.ContainsKey("ch2evidence0"))
			InvestigationManager.evidence.Add("ch2evidence0", 0);
		janitorDoor = GameObject.Find("JanitorDoorCollider");
		if (InvestigationManager.evidence["ch2evidence0"] == 1)
		{
            janitorDoor.GetComponent<ChangeScene>().enabled = false;
			janitorDoor.GetComponent<MeshCollider>().isTrigger = false;
        }
			
	}

	public void unlockDoors()
	{
		InvestigationManager.evidence["ch2evidence0"] = 0;
		janitorDoor.GetComponent<ChangeScene>().enabled = true;
        janitorDoor.GetComponent<MeshCollider>().isTrigger = true;
    }
}