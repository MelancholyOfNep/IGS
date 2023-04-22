using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TakeKey : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        if (InvestigationManager.evidence.ContainsKey("ch2Evidence0") && InvestigationManager.evidence["ch2Evidence0"] == 1)
        {
            gameObject.SetActive(false);
        }
    }

    public void CollectKey()
    {
        gameObject.SetActive(false);
        Debug.Log("Key Get!");
    }
}
