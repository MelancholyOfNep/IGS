using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ExamineScript : MonoBehaviour
{
	public InvestigationManager.items[] informationDiscovered;
	public string[] messages;
	public int nextMessage = 0;
	public float messageCooldown = 1f;
	float cooldownStamp = 0;

	public void RegisterInformation()
	{
		if (cooldownStamp == Time.time || Time.time - cooldownStamp >= messageCooldown)
		{
			foreach (var i in informationDiscovered)
			{
				InvestigationManager.RegisterInformation(i);
			}

			cooldownStamp = Time.time;
			//cooldownCount = messageCooldown;
		}
	}

	public void DisplayMessage()
	{
		if (cooldownStamp == Time.time || Time.time - cooldownStamp >= messageCooldown)
		{
			SubtitleManager.ExamineInstance.DisplayMessage(messages[nextMessage]);

			if (nextMessage + 1 < messages.Length)
			{
				nextMessage++;
			}
			
			cooldownStamp = Time.time;
			//cooldownCount = messageCooldown;
		}
	}
}