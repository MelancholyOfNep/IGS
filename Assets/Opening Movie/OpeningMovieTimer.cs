using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class OpeningMovieTimer : MonoBehaviour
{
    [SerializeField]
    private float OpeningMovieCount = 41f;
    [SerializeField]
    private string MainMenu;

    private float timerElapse;

    private void Update()
    {
        timerElapse += Time.deltaTime;

        if (timerElapse > OpeningMovieCount)
        {
            SceneManager.LoadScene(MainMenu);
        }
    }
}
