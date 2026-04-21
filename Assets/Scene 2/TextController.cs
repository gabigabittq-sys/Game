using UnityEngine;
using TMPro; 

public class TextController : MonoBehaviour
{
    public TextMeshProUGUI myText; // Drag your text object here in the Inspector

    void Start()
    {
        myText.text = "Hello, World!";

    }
}
