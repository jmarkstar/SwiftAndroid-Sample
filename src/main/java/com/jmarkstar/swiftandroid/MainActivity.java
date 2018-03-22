package com.jmarkstar.swiftandroid;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.widget.ListView;

import com.johnholdsworth.swiftbindings.SwiftAdapterBinding;
import com.johnholdsworth.swiftbindings.SwiftBluetoothScannerActivityBinding;

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

    public void setAdapter(SwiftAdapter adapter) {

        tableView.setAdapter(adapter);
    }
}
