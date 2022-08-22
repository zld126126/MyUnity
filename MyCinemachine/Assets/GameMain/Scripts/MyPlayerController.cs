using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

public class MyPlayerController : MonoBehaviour
{
    /// <summary>
    /// 玩家index
    /// </summary>
    public int PlayerIndex = 1;

    /// <summary>
    /// 玩家列表
    /// </summary>
    public List<Transform> playerList = new List<Transform>();
    
    /// <summary>
    /// 移动速度
    /// </summary>
    [Range(1, 100)] public float moveSpeed = 3;

    private CharacterController characterController = null;
    private Transform mTransform = null;
    private float HorizontalInput = 0;
    private float VerticalInput = 0;

    private void Awake()
    {
        if (playerList.Count > 0 && playerList[PlayerIndex] != null)
        {
            mTransform = playerList[PlayerIndex];
            characterController = mTransform.gameObject.GetComponent<CharacterController>();
        }

    }

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    private void Update()
    {
        if (characterController != null)
        {
            MovePlayer();
        }

        if (playerList.Count > 0)
        {
            ChangePlayer();
        }
    }

    /// <summary>
    /// 移动玩家
    /// </summary>
    private void MovePlayer()
    {
        HorizontalInput = Input.GetAxis("Horizontal");
        VerticalInput = Input.GetAxis("Vertical");

        if (Input.GetKey(KeyCode.W) || Input.GetKey(KeyCode.S) || Input.GetKey(KeyCode.A) ||
            Input.GetKey(KeyCode.D))
        {
            characterController.SimpleMove(
                mTransform.TransformDirection(new Vector3(HorizontalInput, 0, VerticalInput)) * moveSpeed);
        }
    }

    /// <summary>
    /// 切换玩家
    /// </summary>
    private void ChangePlayer()
    {
        if (Input.GetKeyUp(KeyCode.Return))
        {
            Debug.LogError("ChangePlayer");
            int TargetIndex = PlayerIndex + 1;
            if (TargetIndex >= this.playerList.Count())
            {
                TargetIndex = 0;
            }
            
            mTransform = playerList[TargetIndex];
            PlayerIndex = TargetIndex;
            characterController = mTransform.gameObject.GetComponent<CharacterController>();

            MyCameraController.Instance.ChangeFollow(mTransform);
        }
    }
}