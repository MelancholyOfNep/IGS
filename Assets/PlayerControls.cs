using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEditor;
using UnityEngine;

public class PlayerControls : MonoBehaviour
{
	[Header("Movement")]
	[SerializeField] CharacterController characterController;
	[SerializeField] float speed;

	[Header("Gravity")]
	[SerializeField] float gravity;
	[SerializeField] Transform groundCheck;
	[SerializeField] float groundDistance;
	[SerializeField] LayerMask groundMask;
	[SerializeField] Vector3 velocity;
	[SerializeField] bool isGrounded;

	[Header("Mouselook")]
	[SerializeField] Transform playerBody;
	public float mouseSensitivity;
	[SerializeField] Camera cam;

	float xRot = 0f;

	float xAccumulator; // this is a member variable, NOT a local!
	float yAccumulator;
	const float Snappiness = 200.0f; // larger values of this cause less filtering, more responsiveness

	void Start()
	{
		Cursor.lockState = CursorLockMode.Locked;
	}

	void Update()
	{
		isGrounded = Physics.CheckSphere(groundCheck.position, groundDistance, groundMask);

		if (isGrounded && velocity.y < 0)
		{
			velocity.y = -4f;
		}

		float x = Input.GetAxis("Horizontal");
		float z = Input.GetAxis("Vertical");

		Vector3 move = transform.right * x + transform.forward * z;
		characterController.Move(move * speed * Time.deltaTime);

		velocity.y += gravity * Time.deltaTime;
		characterController.Move(velocity * Time.deltaTime);

		// Mouse stuff
		float inputX = Input.GetAxis("Mouse X") * mouseSensitivity * Time.deltaTime;
		xAccumulator = Mathf.Lerp(xAccumulator, inputX, Snappiness * Time.deltaTime);

		float inputY = Input.GetAxis("Mouse Y") * mouseSensitivity * Time.deltaTime;
		yAccumulator = Mathf.Lerp(yAccumulator, inputY, Snappiness * Time.deltaTime);

		xRot -= yAccumulator;
		xRot = Mathf.Clamp(xRot, -90f, 90f);

		cam.transform.localRotation = Quaternion.Euler(xRot, 0f, 0f);
		playerBody.Rotate(Vector3.up * xAccumulator /*mouseX*/);

		// Quit function
		if (Input.GetKeyDown(KeyCode.Escape))
		{
			Application.Quit();
		}
	}
}
