using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MainMenuTimer : MonoBehaviour
{
    [SerializeField]
    private float delayTime = 25f;
    [SerializeField]
    private string movie;

    [SerializeField]
    private float timerElapse;

    private void Update()
    {
        timerElapse += Time.deltaTime;

        if (timerElapse > delayTime)
        {
            SceneManager.LoadScene(movie);
        }
    }
}
