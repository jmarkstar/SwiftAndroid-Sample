package com.jmarkstar.swiftandroid;

import android.content.Context;
import android.database.DataSetObserver;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ListView;
import java.util.List;
import java.util.zip.Inflater;

import com.johnholdsworth.swiftbindings.SwiftListViewBinding;

public class MainActivity extends AppCompatActivity {

    private static void loadNativeDependencies() {
        System.loadLibrary("swiftandroid");
    }

    private ListView tableView;
    private SwiftAdapter adapter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        loadNativeDependencies();

        tableView = (ListView) findViewById(R.id.tableView);
        adapter = SwiftAdapter.newInstance(this);
        tableView.setAdapter(adapter);
        //adapter.notifyDataSetChanged();
        //tableView.invalidateViews();
        //tableView.refreshDrawableState();

        /*
        btnSum.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if(etNum1.getText().toString().isEmpty()){
                    Toast.makeText(MainActivity.this, "Num 1 is required", Toast.LENGTH_SHORT).show();
                    return;
                }

                if(etNum2.getText().toString().isEmpty()){
                    Toast.makeText(MainActivity.this, "Num 2 is required", Toast.LENGTH_SHORT).show();
                    return;
                }

                int num1 = Integer.parseInt(etNum1.getText().toString());
                int num2 = Integer.parseInt(etNum2.getText().toString());

                listener.processSum(num1, num2);
            }
        });*/
    }

    //Response from Swift
    /*
    @Override public void processedSum(int result) {
        tvResult.setText(String.valueOf(result));
    }*/
}

class SwiftAdapter extends BaseAdapter implements SwiftListViewBinding.Responder {

    SwiftListViewBinding.Listener listener;

    /** Implemented in src/main/swift/Sources/main.swift */
    @SuppressWarnings("JniMissingFunction")
    private native SwiftListViewBinding.Listener bind(SwiftListViewBinding.Responder self );

    private LayoutInflater inflater;

    public static SwiftAdapter newInstance(Context context) {

        Log.w("SwiftAdapter", "newInstance: ");

        SwiftAdapter newInstance = new SwiftAdapter();
        newInstance.listener = newInstance.bind(newInstance);
        newInstance.inflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        return newInstance;
    }

    // adapter

    @Override
    public int getCount() {

        Log.w("SwiftAdapter", "getCount: ");

        if (listener == null) {
            return 0;
        }

        return listener.numberOfRows();
    }

    @Override
    public Object getItem(int position) {
        return null;
    }

    @Override
    public long getItemId(int position) {
        return position;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {

        Log.w("SwiftAdapter", "getView: ");

        View view;
        CustomCell cell;

        // create
        if (convertView == null) {

            view = inflater.inflate(R.layout.cell, parent, false);

            cell = new CustomCell();
            cell.textView = (TextView) view.findViewById(R.id.textView);

            view.setTag(cell);

        } else {

            view = convertView;
            cell = (CustomCell) view.getTag();
        }

        // configure
        listener.configureCell(cell, position);

        return convertView;
    }

    class CustomCell implements SwiftListViewBinding.Cell {

        TextView textView;

        @Override
        public void setTitle(String title) {

            Log.w("CustomCell", "setTitle: ");

            textView.setText(title);
        }
    }
}