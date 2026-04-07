using UnityEngine;

public partial class Collectible : MonoBehaviour
{
    // Adjust rotation speed in the Inspector
    public Vector3 rotationAngle = new Vector3(0, 100, 0);

    void Update()
    {
        // Makes the item spin so it looks "pick-up-able"
        transform.Rotate(rotationAngle * Time.deltaTime);
    }

    private void OnTriggerEnter(Collider other)
    {
        // Check if the object hitting the coin is the Player
        if (other.CompareTag("Player"))
        {
            Pickup();
        }
    }

    void Pickup()
    {
        // Tell the GameManager to increase the score
        GameManager.instance.AddScore(1);

        Debug.Log("Item Picked Up!");
        Destroy(gameObject);
    }
}
