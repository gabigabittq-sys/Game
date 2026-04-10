using UnityEngine;
using System; // Required for Action

public class Collectible : MonoBehaviour
{
    // This is the "shout" other scripts can listen for
    public static event Action OnBagCollected;

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            // Trigger the event
            OnBagCollected?.Invoke();
            
            // Destroy the bag
            Destroy(gameObject);
        }
    }
}