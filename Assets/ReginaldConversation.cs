using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ReginaldConversation : MonoBehaviour
{
    [SerializeField]
    GameObject player;
    [SerializeField]
    Collider convCollider;
    [SerializeField]
    CommunicationSubject communicator;

    // Start is called before the first frame update
    void Start()
    {
        communicator = gameObject.GetComponent<CommunicationSubject>();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            other.gameObject.transform.LookAt(gameObject.transform);
            other.gameObject.transform.eulerAngles = new Vector3(0, transform.eulerAngles.y, 0);
            convCollider.enabled = false;
            communicator.ColdOpen();
        }
    }
}
