package com.jmarkstar.swiftandroid;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.johnholdsworth.swiftbindings.SwiftMathBinding;

public class MainActivity extends AppCompatActivity implements SwiftMathBinding.Responder {

    static SwiftMathBinding.Listener listener;

    private static void loadNativeDependencies() {
        System.loadLibrary("swiftandroid");
    }

    private EditText etNum1, etNum2;
    private Button btnSum;
    private TextView tvResult;

    /** Implemented in src/main/swift/Sources/main.swift */
    @SuppressWarnings("JniMissingFunction")
    native SwiftMathBinding.Listener bind(SwiftMathBinding.Responder self );

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        loadNativeDependencies();
        listener = bind( this );

        etNum1 = (EditText)findViewById(R.id.et_num1);
        etNum2 = (EditText)findViewById(R.id.et_num2);
        btnSum = (Button)findViewById(R.id.btn_sum);
        tvResult = (TextView)findViewById(R.id.tv_result);

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
        });
    }

    //Response from Swift
    @Override public void processedSum(int result) {
        tvResult.setText(String.valueOf(result));
    }
}
