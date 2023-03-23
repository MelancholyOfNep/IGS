using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MirrorLock : MonoBehaviour
{
	GameObject mirrorDoor;

	private void Awake()
	{
		if (!InvestigationManager.evidence.ContainsKey("mirrorLocked"))
			InvestigationManager.evidence.Add("mirrorLocked", 1);
		mirrorDoor = GameObject.Find("MirrorDoor");
		if (InvestigationManager.evidence["mirrorLocked"] == 1)
			mirrorDoor.GetComponent<ChangeScene>().enabled = false;
	}

	public void unlockDoors()
	{
		InvestigationManager.evidence["mirrorLocked"] = 0;
		mirrorDoor.GetComponent<ChangeScene>().enabled = true;
	}
}