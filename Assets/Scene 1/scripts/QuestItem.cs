using UnityEngine;

public class QuestItem : MonoBehaviour
{
    public LizardQuest lizardScript; 

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            lizardScript.OnBagCollected(); 
            Destroy(gameObject); // This deletes the one on the ground
        }
    }
}