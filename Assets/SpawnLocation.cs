using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpawnLocation : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        string startLoc = GameObject.FindGameObjectWithTag("Manager").GetComponent<GameManager>().playerStartLocation;
        string[] spawnSpot = { "DWMirror", "LWMirror", "LWOutsideMirror", "LWOutsideTent", "LWOutsideJanitor",
            "LWOutsideTim", "DWOutsideMirror", "DWOutsideTent", "DWOutsideJanitor", "DWOutsideTim", "LWMirrorDoor", "DWMirrorDoor"};
        foreach (string sp in spawnSpot)
        {
            if (startLoc == sp)
            {
                GameObject.FindGameObjectWithTag("Player").gameObject.transform.position = GameObject.Find(sp).transform.position;
                GameObject.FindGameObjectWithTag("Player").gameObject.transform.rotation = GameObject.Find(sp).transform.rotation;
            }
        }
    }
}
