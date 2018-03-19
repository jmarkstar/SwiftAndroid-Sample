package com.jmarkstar.swiftandroid;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.widget.ListView;

import com.johnholdsworth.swiftbindings.SwiftAdapterBinding;
import com.johnholdsworth.swiftbindings.SwiftBluetoothBinding;

public class MainActivity extends AppCompatActivity {

    private static void loadNativeDependencies() {
        System.loadLibrary("swiftandroid");
    }

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
        bluetoothManager = new SwiftBluetoothLowEnergyManager(this);

        tableView = (ListView) findViewById(R.id.tableView);
        adapter = new SwiftAdapter(this);
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
