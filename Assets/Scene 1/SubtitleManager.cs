using UnityEngine;
using TMPro;
using System.Collections;

public class SubtitleManager : MonoBehaviour
{
    public static SubtitleManager Instance;
    public TextMeshProUGUI subtitleText;

    void Awake()
    {
        Instance = this;
        subtitleText.text = ""; // Start empty
    }

    public void ShowSubtitle(string line, float duration)
    {
        StopAllCoroutines(); // Interrupt previous monologue if a new one starts
        StartCoroutine(DisplayRoutine(line, duration));
    }

    IEnumerator DisplayRoutine(string line, float duration)
    {
        subtitleText.text = line;
        yield return new WaitForSeconds(duration);
        subtitleText.text = "";
    }
}