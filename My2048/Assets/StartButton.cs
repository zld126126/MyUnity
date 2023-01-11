using UnityEngine;
using System.Collections;

public class StartButton : MonoBehaviour {

    public void OnClick( dfControl control,dfMouseEventArgs args ) {
        Application.LoadLevel(1);
    }
}
