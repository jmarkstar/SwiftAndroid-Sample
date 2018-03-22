package com.johnholdsworth.swiftbindings;

/**
 * Created by coleman on 3/18/18.
 */

public interface SwiftBluetoothScannerActivityBinding extends SwiftActivityBinding {

    // Messages from Java Activity to Swift
    public interface Listener extends SwiftActivityBinding.Listener {


    }

    // Messages from Swift back to Java Activity
    public interface Responder extends SwiftActivityBinding.Responder {

        int getCellResource();

        int getTextViewResource();

        Object getLayoutInflater();

        void setAdapter(Object adapter);
    }
}
