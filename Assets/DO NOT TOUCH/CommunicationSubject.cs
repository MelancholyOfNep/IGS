using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using Ink.Runtime;

public class CommunicationSubject : MonoBehaviour
{
	public float secondsPerCharacter;
	public TextAsset conversationChapter0;
	public TextAsset conversationChapter1;
	public TextAsset conversationChapter2;
	public TextAsset conversationChapter3;
	public TextAsset conversationChapter4;
	public TextAsset conversationChapter5;
	public TextAsset conversationChapter0Dark;
	public TextAsset conversationChapter1Dark;
	public TextAsset conversationChapter2Dark;
	public TextAsset conversationChapter3Dark;
	public TextAsset conversationChapter4Dark;
	public TextAsset conversationChapter5Dark;
	[HideInInspector]
	public Story story;
	public UnityEvent OnConversationStart;
	public UnityEvent OnConversationEnd;

	public void StartConversation()
	{
		GameManager manager = GameObject.FindGameObjectWithTag("Manager").GetComponent<GameManager>();
		if (manager.isDarkWorld == false)
		{
			/*
			int[] chapterNo = { 0, 1, 2, 3, 4, 5 };
			TextAsset[] chapterConvos = { conversationChapter0, conversationChapter1, conversationChapter2, conversationChapter3, conversationChapter4, conversationChapter5 };
			foreach(int ch in chapterNo)
			{
				if (manager.chapter == ch)
					story = new Story(chapterConvos[ch].text);
			}
			*/
			if (manager.chapter == 0)
				story = new Story(conversationChapter0.text);
			else if (manager.chapter == 1)
				story = new Story(conversationChapter1.text);
			else if (manager.chapter == 2)
				story = new Story(conversationChapter2.text);
			else if (manager.chapter == 3)
				story = new Story(conversationChapter3.text);
			else if (manager.chapter == 4)
				story = new Story(conversationChapter4.text);
			else if (manager.chapter == 5)
				story = new Story(conversationChapter5.text);
		}
		else if (manager.isDarkWorld == true)
		{
			if (manager.chapter == 0)
				story = new Story(conversationChapter0Dark.text);
			else if (manager.chapter == 1)
				story = new Story(conversationChapter1Dark.text);
			else if (manager.chapter == 2)
				story = new Story(conversationChapter2Dark.text);
			else if (manager.chapter == 3)
				story = new Story(conversationChapter3Dark.text);
			else if (manager.chapter == 4)
				story = new Story(conversationChapter4Dark.text);
			else if (manager.chapter == 5)
				story = new Story(conversationChapter5Dark.text);
		}

		OnConversationStart.Invoke();
		CommunicationManager.Instance.LoadSubject(this);
		CommunicationManager.Instance.StartConversation();
		CommunicationManager.Instance.ChangeSecondsPerCharacter(secondsPerCharacter);
	}

	public void EndConversation()
	{
		GameObject.FindGameObjectWithTag("Manager").GetComponent<GameManager>().ChapterCheck();
		OnConversationEnd.Invoke();
	}

	public void ColdOpen()
	{
		GameManager manager = GameObject.FindGameObjectWithTag("Manager").GetComponent<GameManager>();
		
		if (manager.chapter == 0)
		{
			story = new Story(conversationChapter0.text);
		}

		else if (manager.chapter == 1)
		{
			story = new Story(conversationChapter1.text);
		}
		else if (manager.chapter == 3)
		{
			story = new Story(conversationChapter3.text);
		}
		CommunicationManager.Instance.LoadSubject(this);
		CommunicationManager.Instance.StartConversation();
		CommunicationManager.Instance.ChangeSecondsPerCharacter(secondsPerCharacter);
	}
}
