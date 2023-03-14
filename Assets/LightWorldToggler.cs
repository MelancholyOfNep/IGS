using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LightWorldToggler : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        GameObject.FindGameObjectWithTag("Manager").GetComponent<GameManager>().isDarkWorld = false;
    }
}
