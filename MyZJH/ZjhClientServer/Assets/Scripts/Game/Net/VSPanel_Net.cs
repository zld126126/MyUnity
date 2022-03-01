using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using DG.Tweening;
using Protocol.Dto.Fight;

public class VSPanel_Net : MonoBehaviour
{
    public float m_DealyTime = 2f;

    [System.Serializable]
    public class Player
    {
        public Image[] cards;
        public Text txt_UserName;
    }
    public Player m_Win;
    public Player m_Lose;

    private void Awake()
    {
        EventCenter.AddListener<CompareResultDto>(EventDefine.CompareCardBRO, Compare);
    }
    private void OnDestroy()
    {
        EventCenter.RemoveListener<CompareResultDto>(EventDefine.CompareCardBRO, Compare);
    }
    private void Compare(CompareResultDto dto)
    {
        GetComponent<RectTransform>().DOScale(Vector3.one, 0.3f).OnComplete(() =>
        {
            StartCoroutine(Dealy());
        });
        for (int i = 0; i < dto.winDto.cardList.Count; i++)
        {
            m_Win.cards[i].sprite = ResourcesManager.LoadCardSprite(dto.winDto.cardList[i].CardName);
        }
        m_Win.txt_UserName.text = dto.winDto.userName;

        for (int i = 0; i < dto.loseDto.cardList.Count; i++)
        {
            m_Lose.cards[i].sprite = ResourcesManager.LoadCardSprite(dto.loseDto.cardList[i].CardName);
        }
        m_Lose.txt_UserName.text = dto.loseDto.userName;
    }
    private IEnumerator Dealy()
    {
        yield return new WaitForSeconds(m_DealyTime);
        transform.DOScale(Vector3.zero, 0.3f);
    }
}
