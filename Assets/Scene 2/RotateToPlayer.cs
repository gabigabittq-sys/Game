using UnityEngine;

public class RotateToPlayer : MonoBehaviour
{
    Transform player;

    void Awake()
    {
        player = GameObject.FindGameObjectWithTag("Player").transform;
    }

    // Update is called once per frame
    void Update()
    {
        // 1. Calculate the direction to the player on the global XZ plane
        Vector3 direction = player.position - transform.position;
        direction.y = 0;

        if (direction != Vector3.zero)
        {
            // 2. Create a rotation that points toward the player
            Quaternion lookRotation = Quaternion.LookRotation(direction);

            // 3. Extract only the Y component from that look rotation
            float targetY = lookRotation.eulerAngles.y;

            // 4. Reconstruct the rotation: 
            // Use the current X and Z (the tilt) and the new Y (the heading)
            transform.rotation = Quaternion.Euler(transform.eulerAngles.x, targetY, transform.eulerAngles.z);
        }
    }
}
