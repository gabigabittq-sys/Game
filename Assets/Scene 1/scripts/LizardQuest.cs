using UnityEngine;

public class LizardQuest : MonoBehaviour
{
    public Transform targetLocation; 
    public GameObject bagVisualOnLizard; // Drag the HIDDEN bag child here
    public float speed = 2.0f;
    private bool isMoving = false;

    void Update()
    {
        if (isMoving)
        {
            float step = speed * Time.deltaTime;
            transform.position = Vector3.MoveTowards(transform.position, targetLocation.position, step);

            if (Vector3.Distance(transform.position, targetLocation.position) < 0.01f)
            {
                isMoving = false;
            }
        }
    }

    public void OnBagCollected()
    {
        // 1. Make the bag appear on the lizard
        if (bagVisualOnLizard != null)
        {
            bagVisualOnLizard.SetActive(true);
        }

        // 2. Start moving
        isMoving = true;
    }
}