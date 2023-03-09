using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SaveButton : MonoBehaviour
{
    public void Save()
    {
        GameObject.FindGameObjectWithTag("Manager").GetComponent<GameManager>().Save();
        GameObject.FindGameObjectWithTag("Player").GetComponent<FirstPersonController>().Unpause();
    }
}
