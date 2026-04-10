using UnityEngine;

public class TextureFlipper : MonoBehaviour
{
    [Header("Textures to Swap")]
    public Texture textureA;
    public Texture textureB;

    private Renderer objectRenderer;
    private bool showingTextureA = true;
    private float timer = 0f;

    void Start()
    {
        // Get the renderer component once at the start for performance
        objectRenderer = GetComponent<Renderer>();

        if (objectRenderer == null)
        {
            Debug.LogError("No Renderer found on this object!");
            return;
        }

        // Set the initial texture
        UpdateTexture();
    }

    void Update()
    {
        // Add time passed since the last frame
        timer += Time.deltaTime;

        // Check if a second has passed
        if (timer >= 1f)
        {
            // Reset the timer and flip the toggle
            timer = 0f;
            showingTextureA = !showingTextureA;
            
            UpdateTexture();
        }
    }

    void UpdateTexture()
    {
        // Change the main texture of the material
        if (showingTextureA)
            objectRenderer.material.mainTexture = textureA;
        else
            objectRenderer.material.mainTexture = textureB;
    }
}