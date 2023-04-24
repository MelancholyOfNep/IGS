using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class MenuControlsShow : MonoBehaviour
{
    [SerializeField]
    bool inControlsMenu;

    [SerializeField]
    GameObject logo;
    [SerializeField]
    GameObject startButton;
    [SerializeField]
    GameObject loadButton;
    [SerializeField]
    GameObject exitButton;
    [SerializeField]
    GameObject helpButton;

    [SerializeField]
    GameObject helpText;

    private void Start()
    {
        helpText.SetActive(false);
    }

    public void ShowControls()
    {
        if (!inControlsMenu)
        {
            logo.SetActive(false);
            startButton.SetActive(false);
            loadButton.SetActive(false);
            exitButton.SetActive(false);
            helpText.SetActive(true);
            helpButton.GetComponentInChildren<TextMeshProUGUI>().text = "Back";
        }
        else
        {
            logo.SetActive(true);
            startButton.SetActive(true);
            loadButton.SetActive(true);
            exitButton.SetActive(true);
            helpButton.SetActive(true);
            helpText.SetActive(false);
            helpButton.GetComponentInChildren<TextMeshProUGUI>().text = "Help & Controls";
        }

        inControlsMenu = !inControlsMenu;
    }
}
