using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class RandomRoam : MonoBehaviour
{
    public float moveSpeed = 1f;
    public float rotSpeed = 100f;

    public bool isTalking = false;

    private bool isWandering = false;
    private bool isRotatingLeft = false;
    private bool isRotatingRight = false;
    private bool isWalking = false;

    Animator anim;

    private void Awake()
    {
        anim = GetComponentInChildren<Animator>();
    }

    // Update is called once per frame
    void Update()
    {
        if (!isTalking)
        {
            if (isWandering == false)
            {
                StartCoroutine(Wander());
            }
            if (isRotatingRight == true)
            {
                //gameObject.GetComponent<Animator>().Play("idle");
                transform.Rotate(transform.up * Time.deltaTime * rotSpeed);
            }
            if (isRotatingLeft == true)
            {
                //gameObject.GetComponent<Animator>().Play("idle");
                transform.Rotate(transform.up * Time.deltaTime * -rotSpeed);
            }
            if (isWalking == true)
            {
                //gameObject.GetComponent<Animator>().Play("waalk");
                transform.position += transform.forward * moveSpeed * Time.deltaTime;
            }
        }
    }

    IEnumerator Wander()
    {
        int rotTime = Random.Range(1, 3);
        int rotateWait = Random.Range(1, 4);
        int rotateLorR = Random.Range(1, 2);
        int walkWait = Random.Range(1, 5);
        int walkTime = Random.Range(1, 15);

        isWandering = true;

        yield return new WaitForSeconds(walkWait);
        isWalking = true;
        yield return new WaitForSeconds(walkTime);
        isWalking = false;
        yield return new WaitForSeconds(rotateWait);
        if (rotateLorR == 1)
        {
            isRotatingRight = true;
            yield return new WaitForSeconds(rotTime);
            isRotatingRight = false;
        }
        if (rotateLorR == 2)
        {
            isRotatingLeft = true;
            yield return new WaitForSeconds(rotTime);
            isRotatingLeft = false;
        }
        isWandering = false;
    }

    public void StopWalking()
    {
        isTalking = true;
        StopAllCoroutines();
        transform.LookAt(GameObject.FindGameObjectWithTag("Player").transform);
        transform.eulerAngles = new Vector3(0, transform.eulerAngles.y, 0);
        anim.speed = 0;
    }

    public void ContinueWalking()
    {
        isTalking = false;
        anim.speed = 1;
        StartCoroutine(Wander());
    }
}