package com.example.romance.networkdemo;

/**
 * Created by xiechuanquan on 2017/12/10.
 */

public interface HttpCallbackListener {
    void onFinish(String response);
    void onError(Exception e);
}
