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

    [SerializeField]
    bool paused;

    private void Update()
    {
        if (!paused)
            timerElapse += Time.deltaTime;

        if (timerElapse > delayTime)
        {
            SceneManager.LoadScene(movie);
        }
    }

    public void Pause()
    {
        paused = true;
        timerElapse = 0;
    }

    public void Unpause()
    {
        paused = false;
    }
}
