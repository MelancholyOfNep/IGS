using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class PlayerLocker : MonoBehaviour
{
	public UnityEvent Lock;
	public UnityEvent Unlock;
	static PlayerLocker instance;
	public FirstPersonController FirstPersonController;

	private void Awake()
	{
		instance = this;
	}

	public void SetView(bool to)
	{
		FirstPersonController.cameraCanMove = to;
	}    

	public void LockControls()
	{
		Lock.Invoke();
	}

	public void UnlockControls()
	{
		Unlock.Invoke();
	}

	public void Halt(Rigidbody rb)
	{
		rb.velocity = Vector3.zero;
		rb.angularVelocity = Vector3.zero;
	}

	public void SetRBKinematic(Rigidbody rb)
	{
		rb.isKinematic = true;
	}

	public void SetRBNotKinematic(Rigidbody rb)
	{
		rb.isKinematic = false;
	}

	public void MouseControlLock(bool to)
	{
		if (to)
		{
            Cursor.visible = false;
            Cursor.lockState = CursorLockMode.Locked;
		}
		else
		{
            Cursor.visible = true;
            Cursor.lockState = CursorLockMode.None;
        }
	}
}
