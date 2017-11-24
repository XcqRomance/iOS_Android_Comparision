package com.example.xcqromance.lifecycledemo;

import android.os.Bundle;
import android.os.PersistableBundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;

/**
 * Created by xcqromance on 2017/11/21.
 */

public class BaseActivity extends AppCompatActivity {

    String str = this.getClass().getName();

    /*活动第一次被创建的时候调用，布局的加载，事件的绑定可以在这里完成,此时活动还是不可见的*/
    @Override
    public void onCreate(Bundle savedInstanceState)  {
        super.onCreate(savedInstanceState);
        Log.i(str,"onCreate");
    }

    /*活动由不可见变为可见的时候调用*/
    @Override
    protected void onStart() {
        super.onStart();
        Log.i(str,"onStart");
    }

    /*活动已经完全可见，并且可以与用户交互，活动处于返回栈的栈顶*/
    @Override
    protected void onResume() {
        super.onResume();
        Log.i(str,"onResume");
    }

    /*在系统准备启动或者恢复一个activity时调用*/
    @Override
    protected void onPause() {
        super.onPause();
        Log.i(str,"onPause");
    }

    /*当activity 完全不可见的时候调用*/
    @Override
    protected void onStop() {
        super.onStop();
        Log.i(str,"onStop");
    }

    /*活动被重新启动的时候调用*/
    @Override
    protected void onRestart() {
        super.onRestart();
        Log.i(str,"onRestart");
    }

    /*acitivity被销毁前调用，调用之后，activity变为销毁状态*/
    @Override
    protected void onDestroy() {
        super.onDestroy();
        Log.i(str,"onDestroy");
    }

}
