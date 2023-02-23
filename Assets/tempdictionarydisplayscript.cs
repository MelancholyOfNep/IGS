using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class tempdictionarydisplayscript : MonoBehaviour
{
    [SerializeField]
    TextMeshProUGUI text;

    // Update is called once per frame
    void Update()
    {
        text.text = "";
        if (InvestigationManager.evidence.ContainsKey("cube_discovered"))
            text.text += "Cube\n";
        if (InvestigationManager.evidence.ContainsKey("mannequin_discovered"))
            text.text += "Mannequin\n";
        if (InvestigationManager.evidence.ContainsKey("secret_discovered"))
            text.text += "\"Secret\" item!\n";
    }
}
