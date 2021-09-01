using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Snow : MonoBehaviour
{
    private const string SNOW_ON = "SNOW_ON";

    private const string SNOWLEVEL = "_Snow";
    // Start is called before the first frame update

    private float m_Time = 0;
    private bool m_IsSnow = true;
    void Start()
    {
        Shader.EnableKeyword(SNOW_ON);
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKey(KeyCode.A))
        {
            if (m_IsSnow)
            {
                m_Time += Time.deltaTime;
                if (m_Time > 5)
                {
                    m_IsSnow = false;
                    m_Time = 0;
                }
                Shader.SetGlobalFloat(SNOWLEVEL, m_Time / 25);
            }

        }
        else if (Input.GetKey(KeyCode.D))
        {
            m_IsSnow = true;
            m_Time = 0;
            Shader.SetGlobalFloat(SNOWLEVEL, 0f);
        }
    }
}
