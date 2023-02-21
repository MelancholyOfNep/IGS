using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

public class PlayerMovement : MonoBehaviour
{
	[SerializeField] CharacterController characterController;
	[SerializeField] float speed;
	[SerializeField] float gravity = 9.81f;
	[SerializeField] Transform groundCheck;
	[SerializeField] float groundDistance;
	[SerializeField] LayerMask groundMask;

	[SerializeField] Vector3 velocity;
	[SerializeField] bool isGrounded;

	// Update is called once per frame
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
	}
}
