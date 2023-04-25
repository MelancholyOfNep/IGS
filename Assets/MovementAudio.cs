using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovementAudio : MonoBehaviour
{
    public AudioSource walkSound, runSound;

    void Update()
    {
        if (Input.GetKey(KeyCode.W) || Input.GetKey(KeyCode.A) || Input.GetKey(KeyCode.S) || Input.GetKey(KeyCode.D))
        {
            if (Input.GetKey(KeyCode.LeftShift))
            {
                walkSound.enabled = false;
                runSound.enabled = true;
            }
            else
            {
                walkSound.enabled = true;
                runSound.enabled = false;
            }
        }
        else
        {
            walkSound.enabled = false;
            runSound.enabled = false;
        }
    }
}
