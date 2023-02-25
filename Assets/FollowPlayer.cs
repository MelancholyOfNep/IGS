using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class FollowPlayer : MonoBehaviour
{
    public NavMeshAgent follower;
    public Transform player;
    // Start is called before the first frame update
    void Start()
    {
        follower = GetComponent<NavMeshAgent>();
    }

    // Update is called once per frame
    void Update()
    {
        follower.SetDestination(player.position); 
    }
}
