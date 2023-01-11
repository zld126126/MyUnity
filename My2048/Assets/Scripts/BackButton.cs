using UnityEngine;
using System.Collections;

public class BackButton : MonoBehaviour {

    public void OnClick(dfControl control, dfMouseEventArgs args) {
        Application.LoadLevel(0);
    }

}
