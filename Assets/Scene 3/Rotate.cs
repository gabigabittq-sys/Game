using UnityEngine;

public class CircleMove : MonoBehaviour
{
    [Header("Movement Settings")]
    public float speed = 2.0f;
    public float radius = 5.0f;
    public bool reverseDirection = false;

    [Header("Fine Tuning")]
    [Tooltip("Adjust this if the fish isn't facing exactly forward")]
    public float modelRotationOffset = 0f;

    private Vector3 centerPoint;
    private float angle;

    void Start()
    {
        // Sets the center of the circle to the fish's starting position
        centerPoint = transform.position;
    }

    void Update()
    {
        // 1. Calculate the angle based on time and speed
        if (reverseDirection)
        {
            angle -= speed * Time.deltaTime;
        }
        else
        {
            angle += speed * Time.deltaTime;
        }

        // 2. Calculate the new X and Z positions using Trigonometry
        float x = Mathf.Cos(angle) * radius;
        float z = Mathf.Sin(angle) * radius;

        // 3. Update the position
        transform.position = centerPoint + new Vector3(x, 0, z);

        // 4. Make the fish face where it is going
        // We look slightly "ahead" in the circle to get the direction
        float lookAhead = reverseDirection ? -0.05f : 0.05f;
        Vector3 nextPos = centerPoint + new Vector3(Mathf.Cos(angle + lookAhead) * radius, 0, Mathf.Sin(angle + lookAhead) * radius);

        transform.LookAt(nextPos);

        // 5. Apply manual offset if the 3D model was rotated weirdly during export
        transform.Rotate(0, modelRotationOffset, 0);
    }
}