using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class LoadScene : MonoBehaviour
{
    private void OnMouseDown()
    {
        SceneManager.LoadScene("LoadSceneTest02");

    }
}
