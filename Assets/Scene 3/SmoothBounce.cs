using UnityEngine;

public class SmoothBounce : MonoBehaviour
{
    public float bounceSpeed = 3.0f;
    public float bounceHeight = 0.5f;

    private Vector3 startPos;

    void Start()
    {
        startPos = transform.position;
    }

    void Update()
    {
        // Math magic: Sin creates a smooth wave between -1 and 1
        float newY = Mathf.Sin(Time.time * bounceSpeed) * bounceHeight;

        // Update position while keeping X and Z the same
        transform.position = startPos + new Vector3(0, newY, 0);
    }
}