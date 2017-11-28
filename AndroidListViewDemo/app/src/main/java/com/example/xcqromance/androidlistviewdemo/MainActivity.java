package com.example.xcqromance.androidlistviewdemo;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.List;

public class MainActivity extends AppCompatActivity {

    private List<TestModel> dataList = new ArrayList<>();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        initsData();
        TestAdapter adapter = new TestAdapter(MainActivity.this,R.layout.test_item,dataList);
        ListView listView = (ListView)findViewById(R.id.list_view);
        listView.setAdapter(adapter);
        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                TestModel model = dataList.get(i);
                Toast.makeText(MainActivity.this,model.getTitle(),Toast.LENGTH_SHORT).show();
            }
        });
    }

    private void initsData() {
        for (int i = 0; i < 100; i ++) {
            TestModel testModel = new TestModel(R.drawable.set_icon_about,"关于");
            dataList.add(testModel);
            TestModel testModel2 = new TestModel(R.drawable.set_icon_change,"头像");
            dataList.add(testModel2);
            TestModel testModel3 = new TestModel(R.drawable.set_icon_clean,"清楚");
            dataList.add(testModel3);
            TestModel testModel4 = new TestModel(R.drawable.set_icon_edit,"修改");
            dataList.add(testModel4);
        }
    }
}
