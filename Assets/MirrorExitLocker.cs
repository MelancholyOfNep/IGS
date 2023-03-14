using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MirrorExitLocker : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        if (GameObject.FindGameObjectWithTag("Manager").GetComponent<GameManager>().chapter == 0)
            gameObject.SetActive(false);
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
