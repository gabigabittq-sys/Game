using UnityEngine;

public class MonologueTrigger : MonoBehaviour
{
    [TextArea(3, 10)] // Makes the text box bigger in the Inspector
    public string monologueLine;
    public float displayDuration = 4.0f;
    public bool playOnlyOnce = true;

    private bool hasPlayed = false;

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            if (playOnlyOnce && hasPlayed) return;

            SubtitleManager.Instance.ShowSubtitle(monologueLine, displayDuration);
            hasPlayed = true;
        }
    }
}