package com.example.romance.servicebestpratice;

/**
 * Created by xiechuanquan on 2017/12/10.
 */

public interface DownloadListener {
    void onProgress(int progress);
    void onSuccess();
    void onFailed();
    void onPaused();
    void onCanceled();
}
