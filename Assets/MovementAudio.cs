using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovementAudio : MonoBehaviour
{
    public AudioSource walkSound, runSound;
    FirstPersonController controller;
    bool talking;

    private void Awake()
    {
        controller = GameObject.FindWithTag("Player").GetComponent<FirstPersonController>();
    }

    void Update()
    {
        if (!talking)
        {
            if (controller.playerCanMove)
            {
                if (Input.GetAxis("Horizontal") != 0 || Input.GetAxis("Vertical") != 0)
                {
                    if (Input.GetButton("Run"))
                    {
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
            else
            {
                walkSound.enabled = false;
                runSound.enabled = false;
            }
        }
        else
        {
            walkSound.enabled = false;
            runSound.enabled = false;
        }
    }

    public void ForceCutWalkAudio(bool toggle)
    {
        if (!toggle)
            talking = false;
        else
            talking = true;
    }
}
