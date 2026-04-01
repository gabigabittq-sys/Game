using UnityEngine;
using PixelCrushers.DialogueSystem;
public class NewMonoBehaviourScript : MonoBehaviour
{
    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        DialogueManager.StartConversation("lizard convo");
    }
}

