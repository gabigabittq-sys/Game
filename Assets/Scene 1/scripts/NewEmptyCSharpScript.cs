using UnityEngine;
using TMPro;
using System.Collections;

public class InnerMonologue : MonoBehaviour
{
    public TextMeshProUGUI dialogueText;
    public float typingSpeed = 0.05f;
    public float lingerTime = 2.0f; // How long it stays after finishing

    void Start()
    {
        // Example call
        StartCoroutine(ShowMonologue("I have a bad feeling about this door..."));
    }

    IEnumerator ShowMonologue(string line)
    {
        // 1. Clear any old text
        dialogueText.text = "";

        // 2. Type out the new text
        foreach (char letter in line.ToCharArray())
        {
            dialogueText.text += letter;
            yield return new WaitForSeconds(typingSpeed);
        }

        // 3. WAIT for the specified time
        yield return new WaitForSeconds(lingerTime);

        // 4. CLEAR the text so it disappears
        dialogueText.text = "";
    }
}
