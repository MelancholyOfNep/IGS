using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

public class PlayerMovement : MonoBehaviour
{
	[SerializeField] CharacterController characterController;
	[SerializeField] float speed;
	[SerializeField] float gravity;
	[SerializeField] Transform groundCheck;
	[SerializeField] float groundDistance;
	[SerializeField] LayerMask groundMask;

	Vector3 velocity;
	bool isGrounded;

	// Update is called once per frame
	void Update()
	{
		isGrounded = Physics.CheckSphere(groundCheck.position, groundDistance, groundMask);

		if (isGrounded && velocity.y < 0)
		{
			velocity.y = -2f;
		}

		float x = Input.GetAxis("Horizontal");
		float z = Input.GetAxis("Vertical");

		Vector3 move = transform.right * x + transform.forward * z;
		characterController.Move(move * speed * Time.deltaTime);

		velocity.y += gravity * Time.deltaTime;
		characterController.Move(velocity * Time.deltaTime);
	}
}
