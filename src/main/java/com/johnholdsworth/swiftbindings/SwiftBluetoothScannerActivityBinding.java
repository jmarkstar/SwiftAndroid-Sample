package com.johnholdsworth.swiftbindings;

import com.jmarkstar.swiftandroid.SwiftAdapter;

/**
 * Created by coleman on 3/18/18.
 */

public interface SwiftBluetoothScannerActivityBinding extends SwiftActivityBinding {

    // Messages from Java Activity to Swift
    public interface Listener extends SwiftActivityBinding.Listener {


    }

    // Messages from Swift back to Java Activity
    public interface Responder extends SwiftActivityBinding.Responder {

        void setAdapter(SwiftAdapter adapter);
    }
}
