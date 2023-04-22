using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class JanitorLock : MonoBehaviour
{
	[SerializeField]
	GameObject janitorDoor;

	private void Awake()
	{
		if (!InvestigationManager.evidence.ContainsKey("ch2Evidence0"))
			InvestigationManager.evidence.Add("ch2Evidence0", 0);
		janitorDoor = GameObject.Find("JanitorDoorCollider");
		if (InvestigationManager.evidence["ch2Evidence0"] != 1)
		{
            janitorDoor.GetComponent<ChangeScene>().enabled = false;
			janitorDoor.GetComponent<MeshCollider>().isTrigger = false;
        }
		else
		{
			janitorDoor.GetComponent<ChangeScene>().enabled = true;
			janitorDoor.GetComponent<MeshCollider>().isTrigger = true;
		}
			
	}

	public void unlockDoors()
	{
		janitorDoor.GetComponent<ChangeScene>().enabled = true;
        janitorDoor.GetComponent<MeshCollider>().isTrigger = true;
    }
}