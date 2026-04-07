using UnityEngine;
using TMPro; // Required for TextMeshPro

public class GameManager : MonoBehaviour
{
    public static GameManager instance; // Allows other scripts to find this easily
    
    public TextMeshProUGUI scoreText;
    private int score = 0;

    void Awake()
    {
        // Singleton pattern: ensures only one GameManager exists
        instance = this;
    }

    public void AddScore(int amount)
    {
        score += amount;
        UpdateUI();
    }

    void UpdateUI()
    {
        scoreText.text = "Items: " + score.ToString();
    }
}