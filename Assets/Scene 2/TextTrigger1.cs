using UnityEngine;
using TMPro;
using System.Collections;

public class TextTrigger : MonoBehaviour
{
    public TextMeshProUGUI textToDisplay;
    public float displayDuration = 3.0f;

    private bool hasTriggered = false; // This tracks if it happened already

    void Start()
    {
        textToDisplay.gameObject.SetActive(false);
    }

    private void OnTriggerEnter(Collider other)
    {
        // Add the check: ONLY run if the player enters AND hasTriggered is false
        if (other.CompareTag("Player") && !hasTriggered)
        {
            hasTriggered = true; // Flip the switch immediately
            StartCoroutine(ShowAndHideText());
        }
    }

    IEnumerator ShowAndHideText()
    {
        textToDisplay.gameObject.SetActive(true);
        yield return new WaitForSeconds(displayDuration);
        textToDisplay.gameObject.SetActive(false);

        // Optional: Destroy the trigger object entirely to save memory
        // Destroy(gameObject); 
    }
}
