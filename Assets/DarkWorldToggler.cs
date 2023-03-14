using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DarkWorldToggler : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        GameObject.FindGameObjectWithTag("Manager").GetComponent<GameManager>().isDarkWorld = true;
    }
}
