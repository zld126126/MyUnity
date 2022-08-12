using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
public class EventManager : MonoSingleton<EventManager>
{
    private Dictionary<string,UnityEvent> eventDictionary = new Dictionary<string, UnityEvent>();
    // Start is called before the first frame update
    public void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void AddListening(string eventName,UnityAction listener)
    {
        UnityEvent thisEvent = null;
        if(eventDictionary.TryGetValue(eventName,out thisEvent))
        {
            thisEvent.AddListener(listener);
        }
        else
        {
            thisEvent = new UnityEvent();
            thisEvent.AddListener(listener);
            eventDictionary.Add(eventName,thisEvent);
        }
    }

    public void StopListening(string eventName,UnityAction listener)
    {
        UnityEvent thisEvent = null;
        if(eventDictionary.TryGetValue(eventName,out thisEvent))
        {
            thisEvent.RemoveListener(listener);
        }
    }

    public void TriggerEvent(string eventName)
    {
        UnityEvent thisEvent = null;
        if(eventDictionary.TryGetValue(eventName,out thisEvent))
        {
            thisEvent.Invoke();
        }
    }
}
