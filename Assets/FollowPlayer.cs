using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class FollowPlayer : MonoBehaviour
{
    public NavMeshAgent follower;
    public Transform player;

    [SerializeField]
    Animator animator;

    // Start is called before the first frame update
    void Start()
    {
        follower = GetComponent<NavMeshAgent>();
    }

    // Update is called once per frame
    void Update()
    {
        if (Vector3.Distance(player.position, gameObject.transform.position) < 3f)
        {
            follower.isStopped = true;
            animator.speed = 0f;
        }
        else
        {
            animator.speed = 1f;
            follower.isStopped = false;
            follower.SetDestination(player.position);
        }
    }
}
