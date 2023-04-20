using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Ch4JakeEnabler : MonoBehaviour
{
    GameManager manager;
    [SerializeField]
    GameObject blocker;

    private void Awake()
    {
        manager = GameObject.FindGameObjectWithTag("Manager").GetComponent<GameManager>();
        if (manager.chapter != 4)
        {
            gameObject.SetActive(false);
            blocker.SetActive(false);
        }
    }
}
