package com.jmarkstar.swiftandroid;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.widget.*;

import com.johnholdsworth.swiftbindings.SwiftBluetoothScannerActivityBinding;
import com.jmarkstar.swiftandroid.SwiftAdapter;

public class MainActivity extends AppCompatActivity implements SwiftBluetoothScannerActivityBinding.Responder {

    @SuppressWarnings("JniMissingFunction")
    private native SwiftBluetoothScannerActivityBinding.Listener bind (SwiftBluetoothScannerActivityBinding.Responder self);

    private static void loadNativeDependencies() {
        System.loadLibrary("swiftandroid");
    }

    private SwiftBluetoothScannerActivityBinding.Listener listener;
    private ListView tableView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        loadNativeDependencies();
        listener = bind(this);

        tableView = (ListView) findViewById(R.id.tableView);

        // inform Swift
        listener.viewDidLoad();
    }

    public void setAdapter(Object adapter) {

        SwiftAdapter swiftAdapter = (SwiftAdapter)adapter;

        tableView.setAdapter(swiftAdapter);
    }
}
