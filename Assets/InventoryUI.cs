using System.Collections;
using System.Collections.Generic;
using TMPro;
using Unity.VisualScripting;
using UnityEngine;

public class InventoryUI : MonoBehaviour
{
	GameManager manager;
	[SerializeField]
	TextMeshProUGUI chapterTitle;
	[SerializeField]
	TextMeshProUGUI evidence0;
	[SerializeField]
	TextMeshProUGUI evidence1;
	[SerializeField]
	TextMeshProUGUI evidence2;
	[SerializeField]
	TextMeshProUGUI evidence3;
	[SerializeField]
	TextMeshProUGUI evidence4;
	[SerializeField]
	TextMeshProUGUI evidence5;
	[SerializeField]
	TextMeshProUGUI evidence6;
	[SerializeField]
	TextMeshProUGUI evidence7;
	[SerializeField]
	TextMeshProUGUI evidence8;
    [SerializeField]
    TextMeshProUGUI progHint;

    List<TextMeshProUGUI> evidenceBoxes;

    private void Awake()
    {
        manager = GameObject.FindWithTag("Manager").GetComponent<GameManager>();
        evidenceBoxes = new List<TextMeshProUGUI>() { evidence0, evidence1, evidence2, evidence3, evidence4, evidence5, evidence6, evidence7, evidence8 };
    }
    public void ShowInventory()
	{
		chapterTitle.text = "Chapter " + manager.chapter;
        progHint.gameObject.SetActive(false);

        foreach(TextMeshProUGUI box in evidenceBoxes)
        {
            box.gameObject.SetActive(true);
        }

        switch (manager.chapter)
		{
			case 0:
                if (!InvestigationManager.evidence.ContainsKey("mirrorLocked"))
                    InvestigationManager.evidence.Add("mirrorLocked", 1);
                if (InvestigationManager.evidence["mirrorLocked"] != 0)
                {
                    evidence0.color = Color.gray;
                    evidence0.text = "- I should go talk to Steven. He's the ringleader, with a top hat.";
                }
				else
                {
                    evidence0.color = Color.black;
                    evidence0.text = "- I have the all-access pass! Maybe I should check out that Hall of Mirrors he mentioned...";
                }
                evidence1.gameObject.SetActive(false);
                evidence2.gameObject.SetActive(false);
                evidence3.gameObject.SetActive(false);
                evidence4.gameObject.SetActive(false);
                evidence5.gameObject.SetActive(false);
                evidence6.gameObject.SetActive(false);
                evidence7.gameObject.SetActive(false);
                evidence8.gameObject.SetActive(false);
				break;

			case 1:
                List<string> pieces = new List<string>() { "ch1Evidence0", "ch1Evidence1", "ch1Evidence2", "ch1Evidence3", "ch1Evidence4", "ch1Evidence5", "ch1Evidence6", "ch1Evidence7", "ch1Evidence8" };
				KeyCheck(pieces);

				if (InvestigationManager.evidence["ch1Evidence0"] == 0)
				{
                    evidence0.text = "- People are acting like someone died in that dark world...";
					evidence0.color = Color.gray;
                }
				else
				{
                    evidence0.text = "- Reginald was murdered?!";
					evidence0.color = Color.black;
                }
				if (InvestigationManager.evidence["ch1Evidence1"] == 0)
				{
                    evidence1.text = "- Okay. I should map out time and place...";
                    evidence1.color = Color.gray;
                }
				else
				{
                    evidence1.text = "- The body was found in the tent after the morning performance.";
					evidence1.color = Color.black;
                }
				if (InvestigationManager.evidence["ch1Evidence2"] == 0)
				{
                    evidence2.text = "- Is the kid in the rollercoaster still there in that dark world?";
					evidence2.color = Color.gray;
                }
				else
				{
                    evidence2.text = "- Bethany amalgamated with that roller coaster. Creepy...";
					evidence2.color = Color.black;
                }	
				if (InvestigationManager.evidence["ch1Evidence3"] == 0)
				{
                    evidence3.text = "- Is Jake okay in that dark world? He's never been here before...";
					evidence3.color = Color.gray;
                }
				else
				{
                    evidence3.text = "- Jake's memory of attending was erased.";
					evidence3.color = Color.black;
                }	
				if (InvestigationManager.evidence["ch1Evidence4"] == 0)
				{
                    evidence4.text = "- I should check in on the clown in the dark world...";
					evidence4.color = Color.gray;
                }	
				else
				{
                    evidence4.text = "- Jules was alone in the dressing rooms this morning.";
					evidence4.color = Color.black;
                }	
				if (InvestigationManager.evidence["ch1Evidence5"] == 0)
				{
					evidence5.text = "- Is that clown still around in that dark world?";
					evidence5.color = Color.gray;
				}
				else
				{
					evidence5.text = "- Jules was fired.";
					evidence5.color = Color.black;
				}
                if (InvestigationManager.evidence["ch1Evidence6"] == 0)
				{
                    evidence6.text = "- Did anyone hear anything in that dark world?";
					evidence6.color = Color.gray;
                }
                else
				{
                    evidence6.text = "- Jules heard a gunshot outside the dressing room.";
					evidence6.color = Color.black;
                }
                if (InvestigationManager.evidence["ch1Evidence7"] == 0)
				{
                    evidence7.text = "- I should check in with the acrobat...";
					evidence7.color = Color.gray;
                }
                else
				{
                    evidence7.text = "- Tim forgot their flower this morning.";
					evidence7.color = Color.black;
                }
                if (InvestigationManager.evidence["ch1Evidence8"] == 0)
				{
                    evidence8.text = "- Is anyone missing?";
					evidence8.color = Color.gray;
                }
                else
				{
                    evidence8.text = "- Reginald was erased from this world!";
					evidence8.color = Color.black;
                }
                break;

			case 2:
                List<string> pieces2 = new List<string>() { "ch2Evidence0", "ch2Evidence2", "ch2Evidence3", "ch2Evidence4", "ch2Evidence5", "ch2Evidence6", "ch2Evidence7" };
                KeyCheck(pieces2);

                if (InvestigationManager.evidence["ch2Evidence0"] == 0)
                {
                    evidence0.text = "- Is anything missing?";
                    evidence0.color = Color.gray;
                }
                else
                {
                    evidence0.text = "- If only the key had a label. What does it open?";
                    evidence0.color = Color.black;
                }
                if (InvestigationManager.evidence["ch2Evidence2"] == 0)
                {
                    evidence1.text = "- Are there any locked doors?";
                    evidence1.color = Color.gray;
                }
                else
                {
                    evidence1.text = "- I guess a gun was inevitable.";
                    evidence1.color = Color.black;
                }
                if (InvestigationManager.evidence["ch2Evidence3"] == 0)
                {
                    evidence2.text = "- Maybe I should check the acrobat's room?";
                    evidence2.color = Color.gray;
                }
                else
                {
                    evidence2.text = "- Why was the flower still there? I thought they grabbed it.";
                    evidence2.color = Color.black;
                }
                if (InvestigationManager.evidence["ch2Evidence4"] == 0)
                {
                    evidence3.text = "- Could I learn more about Jake's past?";
                    evidence3.color = Color.gray;
                }
                else
                {
                    evidence3.text = "- Jake works in a laboratory.";
                    evidence3.color = Color.black;
                }
                if (InvestigationManager.evidence["ch2Evidence5"] == 0)
                {
                    evidence4.text = "- If the gunshot happened by the trailers...";
                    evidence4.color = Color.gray;
                }
                else
                {
                    evidence4.text = "- There's a blood spatter outside the dressing rooms.";
                    evidence4.color = Color.black;
                }
                if (InvestigationManager.evidence["ch2Evidence6"] == 0)
                {
                    evidence5.text = "- What was Amanda doing that day?";
                    evidence5.color = Color.gray;
                }
                else
                {
                    evidence5.text = "- Amanda is innocent, then.";
                    evidence5.color = Color.black;
                }
                if (InvestigationManager.evidence["ch2Evidence7"] == 0)
                {
                    evidence6.text = "- Where was Tim in the morning?";
                    evidence6.color = Color.gray;
                }
                else
                {
                    evidence6.text = "- So if the murder happened there, and he never went back...";
                    evidence6.color = Color.black;
                }

                evidence7.gameObject.SetActive(false);
                evidence8.gameObject.SetActive(false);

                break;

			case 3:
                List<string> pieces3 = new List<string>() { "ch3Evidence0", "ch3Evidence1" };
                KeyCheck(pieces3);

                if (InvestigationManager.evidence["ch3Evidence0"] == 0)
                {
                    evidence0.text = "- I should talk with Tim again...";
                    evidence0.color = Color.gray;
                }
                else
                {
                    evidence0.text = "- Tim is innocent, then.";
                    evidence0.color = Color.black;
                }
                if (InvestigationManager.evidence["ch3Evidence1"] == 0)
                {
                    evidence1.text = "- I need to figure out what happened to that key...";
                    evidence1.color = Color.gray;
                }
                else
                {
                    evidence1.text = "- Amanda's key was stolen. By whom?";
                    evidence1.color = Color.black;
                }
                evidence2.gameObject.SetActive(false);
                evidence3.gameObject.SetActive(false);
                evidence4.gameObject.SetActive(false);
                evidence5.gameObject.SetActive(false);
                evidence6.gameObject.SetActive(false);
                evidence7.gameObject.SetActive(false);
                evidence8.gameObject.SetActive(false);

                if (InvestigationManager.evidence["ch3Evidence0"] == 1 && InvestigationManager.evidence["ch3Evidence1"] == 1)
                {
                    progHint.gameObject.SetActive(true);
                    progHint.text = "I should head back to the other world to try to wrap my head around this.";
                }
                break;

			case 4:
                List<string> pieces4 = new List<string>() { "ch4Evidence0" };
                KeyCheck(pieces4);

                if (InvestigationManager.evidence["ch4Evidence0"] == 0)
                {
                    evidence0.text = "- Time to confront a killer.";
                    evidence0.color = Color.gray;
                }
                else
                {
                    evidence0.text = "- Back to the light world.";
                    evidence0.color = Color.black;
                }
                evidence1.gameObject.SetActive(false);
                evidence2.gameObject.SetActive(false);
                evidence3.gameObject.SetActive(false);
                evidence4.gameObject.SetActive(false);
                evidence5.gameObject.SetActive(false);
                evidence6.gameObject.SetActive(false);
                evidence7.gameObject.SetActive(false);
                evidence8.gameObject.SetActive(false);
                break;

			case 5:
                evidence0.color = Color.black;
                evidence1.color = Color.black;

                evidence0.text = "- It's over. I could talk to everyone before I leave, if I want.";
                evidence1.text = "- When I want to go, I should head back to the park entrance.";

                evidence2.gameObject.SetActive(false);
                evidence3.gameObject.SetActive(false);
                evidence4.gameObject.SetActive(false);
                evidence5.gameObject.SetActive(false);
                evidence6.gameObject.SetActive(false);
                evidence7.gameObject.SetActive(false);
                evidence8.gameObject.SetActive(false);
				break;

            default:
				break;
		}
	}

	void KeyCheck(List<string> keys)
	{
		foreach(string key in keys)
		{
            if (!InvestigationManager.evidence.ContainsKey(key))
                InvestigationManager.evidence.Add(key, 0);
        }
    }
}
