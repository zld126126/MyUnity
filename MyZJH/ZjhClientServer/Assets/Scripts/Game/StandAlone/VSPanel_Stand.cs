using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using DG.Tweening;

public class VSPanel_Stand : MonoBehaviour
{
    public float m_DealyTime = 2f;

    [System.Serializable]
    public class Player
    {
        public Text txt_Name;
        public Image[] cardsArr;
        public Image img_Lose;
        public Image img_Win;
    }
    public Player m_ComparePlayer;
    public Player m_ComparedPlayer;
    private BaseManager_Stand compare;
    private BaseManager_Stand compared;

    IEnumerator Delay()
    {
        yield return new WaitForSeconds(m_DealyTime);
        transform.DOScale(Vector3.zero, 0.3f);
    }
    IEnumerator CompareWin()
    {
        yield return new WaitForSeconds(m_DealyTime);
        compare.CompareWin();
        compared.ComapreLose();
    }
    IEnumerator CompareLose()
    {
        yield return new WaitForSeconds(m_DealyTime);
        compare.ComapreLose();
        compared.CompareWin();
    }
    private void Awake()
    {
        EventCenter.AddListener<BaseManager_Stand, BaseManager_Stand>(EventDefine.VSAI, CompareCard);
        EventCenter.AddListener<BaseManager_Stand, BaseManager_Stand, string, string>(EventDefine.VSWithSelf, VSWithSelf);
    }
    private void OnDestroy()
    {
        EventCenter.RemoveListener<BaseManager_Stand, BaseManager_Stand>(EventDefine.VSAI, CompareCard);
        EventCenter.RemoveListener<BaseManager_Stand, BaseManager_Stand, string, string>(EventDefine.VSWithSelf, VSWithSelf);
    }
    private void VSWithSelf(BaseManager_Stand compare, BaseManager_Stand compared, string compareName, string comparedName)
    {
        transform.DOScale(Vector3.one, 0.3f).OnComplete(() => { StartCoroutine(Delay()); });

        m_ComparePlayer.img_Lose.gameObject.SetActive(false);
        m_ComparePlayer.img_Win.gameObject.SetActive(false);
        m_ComparedPlayer.img_Lose.gameObject.SetActive(false);
        m_ComparedPlayer.img_Win.gameObject.SetActive(false);

        m_ComparePlayer.txt_Name.text = compareName;
        m_ComparedPlayer.txt_Name.text = comparedName;

        for (int i = 0; i < compare.m_CardList.Count; i++)
        {
            string cardName = "card_" + compare.m_CardList[i].Color + "_" + compare.m_CardList[i].Weight;
            m_ComparePlayer.cardsArr[i].sprite = ResourcesManager.LoadCardSprite(cardName);
        }
        for (int i = 0; i < compared.m_CardList.Count; i++)
        {
            string cardName = "card_" + compared.m_CardList[i].Color + "_" + compared.m_CardList[i].Weight;
            m_ComparedPlayer.cardsArr[i].sprite = ResourcesManager.LoadCardSprite(cardName);
        }

        CompareCard(compare, compared);
    }
    /// <summary>
    /// 比牌的逻辑算法
    /// </summary>
    private void CompareCard(BaseManager_Stand compare, BaseManager_Stand compareD)
    {
        this.compare = compare;
        this.compared = compareD;

        if (compare.m_CardType > compareD.m_CardType)
        {
            //比较者胜利
            StartCoroutine(CompareWin());
            m_ComparePlayer.img_Win.gameObject.SetActive(true);
            m_ComparedPlayer.img_Lose.gameObject.SetActive(true);
        }
        else if (compare.m_CardType == compareD.m_CardType)
        {
            if (compare.m_CardType == CardType.Min)
            {
                CompareCardWhenMin(compare, compareD);
            }

            //662 663 766 866
            if (compare.m_CardType == CardType.Duizi)
            {
                int compareDuiziValue = 0, compareDanValue = 0, compareDduiziValue = 0, compareDdanValue = 0;
                //比较者
                if (compare.m_CardList[0].Weight == compare.m_CardList[1].Weight)
                {
                    compareDuiziValue = compare.m_CardList[0].Weight;
                    compareDanValue = compare.m_CardList[2].Weight;
                }
                if (compare.m_CardList[1].Weight == compare.m_CardList[2].Weight)
                {
                    compareDuiziValue = compare.m_CardList[1].Weight;
                    compareDanValue = compare.m_CardList[0].Weight;
                }
                //被比较者
                if (compareD.m_CardList[0].Weight == compareD.m_CardList[1].Weight)
                {
                    compareDduiziValue = compareD.m_CardList[0].Weight;
                    compareDdanValue = compareD.m_CardList[2].Weight;
                }
                if (compareD.m_CardList[1].Weight == compareD.m_CardList[2].Weight)
                {
                    compareDduiziValue = compareD.m_CardList[1].Weight;
                    compareDdanValue = compareD.m_CardList[0].Weight;
                }

                if (compareDuiziValue > compareDduiziValue)
                {
                    //比较者胜利
                    StartCoroutine(CompareWin());
                    m_ComparePlayer.img_Win.gameObject.SetActive(true);
                    m_ComparedPlayer.img_Lose.gameObject.SetActive(true);
                }
                else if (compareDuiziValue == compareDduiziValue)
                {
                    if (compareDanValue > compareDdanValue)
                    {
                        //比较者胜利
                        StartCoroutine(CompareWin());
                        m_ComparePlayer.img_Win.gameObject.SetActive(true);
                        m_ComparedPlayer.img_Lose.gameObject.SetActive(true);
                    }
                    else
                    {
                        //比较者失败
                        StartCoroutine(CompareLose());
                        m_ComparePlayer.img_Lose.gameObject.SetActive(true);
                        m_ComparedPlayer.img_Win.gameObject.SetActive(true);
                    }
                }
                else
                {
                    //比较者失败
                    StartCoroutine(CompareLose());
                    m_ComparePlayer.img_Lose.gameObject.SetActive(true);
                    m_ComparedPlayer.img_Win.gameObject.SetActive(true);
                }
            }

            if (compare.m_CardType == CardType.Shunzi || compare.m_CardType == CardType.Shunjin ||
                compare.m_CardType == CardType.Baozi)
            {
                int compareSum = 0, compareDSum = 0;
                for (int i = 0; i < compare.m_CardList.Count; i++)
                {
                    compareSum += compare.m_CardList[i].Weight;
                }
                for (int i = 0; i < compareD.m_CardList.Count; i++)
                {
                    compareDSum += compareD.m_CardList[i].Weight;
                }

                if (compareSum > compareDSum)
                {
                    //比较者胜利
                    StartCoroutine(CompareWin());
                    m_ComparePlayer.img_Win.gameObject.SetActive(true);
                    m_ComparedPlayer.img_Lose.gameObject.SetActive(true);
                }
                else
                {
                    //比较者失败
                    StartCoroutine(CompareLose());
                    m_ComparePlayer.img_Lose.gameObject.SetActive(true);
                    m_ComparedPlayer.img_Win.gameObject.SetActive(true);
                }
            }

            if (compare.m_CardType == CardType.Jinhua)
            {
                CompareCardWhenMin(compare, compareD);
            }

            if (compare.m_CardType == CardType.Max)
            {
                //比较者失败
                StartCoroutine(CompareLose());
                m_ComparePlayer.img_Lose.gameObject.SetActive(true);
                m_ComparedPlayer.img_Win.gameObject.SetActive(true);
            }
        }
        else
        {
            //比较者失败
            StartCoroutine(CompareLose());
            m_ComparePlayer.img_Lose.gameObject.SetActive(true);
            m_ComparedPlayer.img_Win.gameObject.SetActive(true);
        }
    }
    private void CompareCardWhenMin(BaseManager_Stand compare, BaseManager_Stand compareD)
    {
        if (compare.m_CardList[0].Weight > compareD.m_CardList[0].Weight)
        {
            //比较者胜利
            StartCoroutine(CompareWin());
            m_ComparePlayer.img_Win.gameObject.SetActive(true);
            m_ComparedPlayer.img_Lose.gameObject.SetActive(true);
        }
        else if (compare.m_CardList[0].Weight == compareD.m_CardList[0].Weight)
        {
            if (compare.m_CardList[1].Weight > compareD.m_CardList[1].Weight)
            {
                //比较者胜利
                StartCoroutine(CompareWin());
                m_ComparePlayer.img_Win.gameObject.SetActive(true);
                m_ComparedPlayer.img_Lose.gameObject.SetActive(true);
            }
            else if (compare.m_CardList[1].Weight == compareD.m_CardList[1].Weight)
            {
                if (compare.m_CardList[2].Weight > compareD.m_CardList[2].Weight)
                {
                    //比较者胜利
                    StartCoroutine(CompareWin());
                    m_ComparePlayer.img_Win.gameObject.SetActive(true);
                    m_ComparedPlayer.img_Lose.gameObject.SetActive(true);
                }
                else
                {
                    //比较者失败
                    StartCoroutine(CompareLose());
                    m_ComparePlayer.img_Lose.gameObject.SetActive(true);
                    m_ComparedPlayer.img_Win.gameObject.SetActive(true);
                }
            }
            else
            {
                //比较者失败
                StartCoroutine(CompareLose());
                m_ComparePlayer.img_Lose.gameObject.SetActive(true);
                m_ComparedPlayer.img_Win.gameObject.SetActive(true);
            }
        }
        else
        {
            //比较者失败
            StartCoroutine(CompareLose());
            m_ComparePlayer.img_Lose.gameObject.SetActive(true);
            m_ComparedPlayer.img_Win.gameObject.SetActive(true);
        }
    }
}
