package com.example.xcqromance.androidlistviewdemo;

/**
 * Created by xcqromance on 2017/11/28.
 */

public class TestModel {
    private int imageID;
    private String title;

    public TestModel(int imageID, String title) {
        this.imageID = imageID;
        this.title = title;
    }

    public int getImageID() {
        return imageID;
    }

    public String getTitle() {
        return title;
    }
}
