using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TestEvidenceItem : MonoBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        if (InvestigationManager.evidence.ContainsKey("testerooni") == false)
        {
            InvestigationManager.evidence.Add("testerooni", 1);
        }
    }
}
