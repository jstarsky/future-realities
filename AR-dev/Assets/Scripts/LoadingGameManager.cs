﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class LoadingGameManager : MonoBehaviour {
    
	public bool Trigger;
	private float _Timer;

	//private void Awake()
    //{
    //    DontDestroyOnLoad(this.gameObject);
    //}

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update (){
		_LoadingGameManager();
	}

	private void _LoadingGameManager(){
		//TO DO: loading Manager
        _Timer += Time.deltaTime;
        if (_Timer > 5.0f)
        {
			//Trigger = true;
			SceneManager.LoadScene(1);

        }
        Debug.Log(_Timer);
	}
}
