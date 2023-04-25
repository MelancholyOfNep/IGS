using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.UI;

public class FinaleFade : MonoBehaviour
{
    public Image img;

    private void Start()
    {
        Cursor.lockState = CursorLockMode.None;
        Cursor.visible = true;
        StartCoroutine(FadeImage());
    }

    IEnumerator FadeImage()
    {
        for (float i = 1; i >= 0; i -= (Time.deltaTime*0.25f))
        {
            img.color = new Color(0, 0, 0, i);
            yield return null;
        }
    }
}
