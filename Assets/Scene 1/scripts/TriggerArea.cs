using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class TriggerArea : MonoBehaviour
{
    // List of strings. These are tags that need to match exactly with the object's tag' to trigger the event
    [Tooltip("If empty, everything is whitelisted.")]
    public List<string> tagWhitelist;

    // Unity event
    public UnityEvent OnTriggeringEnter;
    public UnityEvent OnTriggeringExit;


    // OnTriggerEnter gets triggered when a GameObject with a Rigidbody and a Collider enters a collider marked as 'trigger' on THIS GameObject that 
    private void OnTriggerEnter(Collider other)
    {
        //Debug.Log("TriggerArea: OnTriggerEnter by " + other.gameObject.name + " (tag: "+other.gameObject.tag+")");
        // Check if the whitelist is empty OR entering object's tag in on the whitelist.
        if (tagWhitelist.Count == 0 || tagWhitelist.Contains(other.gameObject.tag))
        {
            // Invoke the Unity event. The '?' is a quick null check and it's optional with Unity Events, but not other type of events.
            OnTriggeringEnter?.Invoke();
        }
    }
    private void OnTriggerExit(Collider other)
    {
        // Check if the whitelist is empty OR entering object's tag in on the whitelist.
        if (tagWhitelist.Count == 0 || tagWhitelist.Contains(other.gameObject.tag))
        {
            // Invoke the Unity event. The '?' is a quick null check and it's optional with Unity Events, but not other type of events.
            OnTriggeringExit?.Invoke();
        }
    }
}
