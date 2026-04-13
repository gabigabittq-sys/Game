using UnityEngine;

public class LighthouseRotation : MonoBehaviour
{
    [Header("Rotation Settings")]
    public float rotationSpeed = 50.0f;

    void Update()
    {
        // Rotates the object around the Y-axis (vertical) over time
        transform.Rotate(0, rotationSpeed * Time.deltaTime, 0);
    }
}
