using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ReginaldConversation : MonoBehaviour
{
    [SerializeField]
    GameObject player;
    [SerializeField]
    Collider convCollider;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            other.gameObject.transform.LookAt(gameObject.transform);
            convCollider.enabled = false;
        }
    }
}
