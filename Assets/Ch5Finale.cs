using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class Ch5Finale : MonoBehaviour
{
    GameManager manager;
    CommunicationSubject communicator;
    [SerializeField]
    Collider homDoor;
    [SerializeField]
    Image img;

    private void Awake()
    {
        manager = GameObject.FindGameObjectWithTag("Manager").GetComponent<GameManager>();
        if (manager.chapter != 5)
        {
            gameObject.SetActive(false);
        }
        else
            homDoor.isTrigger = false;
        communicator = gameObject.GetComponent<CommunicationSubject>();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (manager.chapter != 5)
            gameObject.GetComponent<Collider>().enabled = false;
        else if (other.gameObject.tag == "Player")
        {
            other.GetComponent<FirstPersonController>().playerCanMove = false;
            other.GetComponent<FirstPersonController>().enableHeadBob = false;
            communicator.ColdOpen();
        }
    }

    public void Finale()
    {
        StartCoroutine(FadeImage());
    }

    IEnumerator FadeImage()
    {
        for (float i = 0; i <= 1; i += (Time.deltaTime*.25f))
        {
            img.color = new Color(0, 0, 0, i);
            yield return null;
        }
        //yield return new WaitForSeconds(4f);
        SceneManager.LoadScene("FinishedMenu");
    }
}
