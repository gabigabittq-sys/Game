using UnityEngine;

public class SpriteSwapper : MonoBehaviour
{
    public Sprite sprite1;
    public Sprite sprite2;
    public float interval = 1.0f; // Time in seconds

    private SpriteRenderer spriteRenderer;
    private bool showingFirstSprite = true;
    private float timer;

    void Start()
    {
        spriteRenderer = GetComponent<SpriteRenderer>();
    }

    void Update()
    {
        timer += Time.deltaTime;

        if (timer >= interval)
        {
            // Toggle the boolean
            showingFirstSprite = !showingFirstSprite;
            
            // Apply the correct sprite
            spriteRenderer.sprite = showingFirstSprite ? sprite1 : sprite2;
            
            // Reset timer
            timer = 0;
        }
    }
}