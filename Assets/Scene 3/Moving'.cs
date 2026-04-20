using UnityEngine;

public class ScalePulse : MonoBehaviour
{
    public float scaleSpeed = 2.0f;
    public float scaleAmount = 1.5f; // How much it stretches

    private Vector3 initialScale;

    void Start()
    {
        // Store the scale you set in the editor
        initialScale = transform.localScale;
    }

    void Update()
    {
        // Calculate the new X scale using a Sine wave
        // It will oscillate between initialScale.x and (initialScale.x + scaleAmount)
        float pulse = Mathf.PingPong(Time.time * scaleSpeed, scaleAmount);

        transform.localScale = new Vector3(initialScale.x + pulse, initialScale.y, initialScale.z);
    }
}
