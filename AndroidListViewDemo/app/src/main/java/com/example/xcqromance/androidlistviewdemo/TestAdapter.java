package com.example.xcqromance.androidlistviewdemo;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;

import java.util.List;

/**
 * Created by xcqromance on 2017/11/28.
 */

public class TestAdapter extends ArrayAdapter {

    private int resourceID;

    public TestAdapter(@NonNull Context context, int resource, List<TestModel> objects) {
        super(context, resource,objects);
        resourceID = resource;
    }

    @NonNull
    @Override
    public View getView(int position, @Nullable View convertView, @NonNull ViewGroup parent) {
        TestModel testModel = (TestModel)getItem(position);
        View view;
        ViewHolder viewHolder;
        if (convertView == null) {
            view = LayoutInflater.from(getContext()).inflate(resourceID, parent, false);
            viewHolder = new ViewHolder(view);
            view.setTag(viewHolder);
        } else {
            view = convertView;
            viewHolder = (ViewHolder)view.getTag();
        }
        viewHolder.imageView.setImageResource(testModel.getImageID());
        viewHolder.textView.setText(testModel.getTitle());
        return view;
    }

    class ViewHolder {
        ImageView imageView;
        TextView textView;
        ViewHolder(View view ) {
            imageView = (ImageView)view.findViewById(R.id.test_image);
            textView = (TextView)view.findViewById(R.id.test_tile);
        }
    }

}
