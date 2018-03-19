package com.jmarkstar.swiftandroid;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.widget.ListView;

import com.johnholdsworth.swiftbindings.SwiftAdapterBinding;
import com.johnholdsworth.swiftbindings.SwiftBluetoothBinding;
import com.johnholdsworth.swiftbindings.SwiftBluetoothScannerActivityBinding;

public class MainActivity extends AppCompatActivity implements SwiftBluetoothScannerActivityBinding.Responder {

    @SuppressWarnings("JniMissingFunction")
    private native SwiftBluetoothScannerActivityBinding.Listener bind (SwiftBluetoothScannerActivityBinding.Responder self);

    private static void loadNativeDependencies() {
        System.loadLibrary("swiftandroid");
    }

    private SwiftBluetoothScannerActivityBinding.Listener listener;
    private ListView tableView;
    private SwiftAdapter adapter;
    private SwiftBluetoothLowEnergyManager bluetoothManager;

    public SwiftAdapterBinding.Responder getAdapter() {
        return adapter;
    }

    public SwiftBluetoothBinding.Responder getBluetoothManager() {
        return bluetoothManager;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        loadNativeDependencies();
        listener = bind(this);

        bluetoothManager = new SwiftBluetoothLowEnergyManager(this);
        tableView = (ListView) findViewById(R.id.tableView);
        adapter = new SwiftAdapter(this);
        tableView.setAdapter(adapter);

        // inform Swift
        listener.viewDidLoad();
    }

    //Response from Swift
    /*
    @Override public void processedSum(int result) {
        tvResult.setText(String.valueOf(result));
    }*/
}
