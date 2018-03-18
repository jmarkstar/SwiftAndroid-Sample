package com.johnholdsworth.swiftbindings;

import java.util.List;

/**
 * Created by coleman on 3/17/18.
 */

public interface SwiftBluetoothBinding {

    // Messages from Java to Swift
    public interface Listener {


    }

    // Messages from Swift back to Java
    public interface Responder {

        public void startScan(ScanSettings settings, ScanCallback callback);

        public void stopScan();
    }

    // From Swift to Java
    public interface ScanSettings {

        // Bluetooth LE scan mode.
        public int getScanMode();

        // Bluetooth LE scan callback type
        public int getCallbackType();

        //
        public int getMatchMode();

        // Bluetooth LE scan result type
        public int getScanResultType();

        // Time of delay for reporting the scan result
        public long getReportDelayMiliseconds();

        //
        public int getNumberOfMatchesPerFilter();
    }

    // From Java to Swift
    public interface ScanResult {

        public BluetoothDevice getDevice();

        // Received signal strength.
        public int getRSSI();

        // Scan record, including advertising data and scan response data.
        public ScanRecord getScanRecord();

        public long getTimeStamp();

        public String toString();
    }

    // From Java to Swift
    public interface ScanCallback {

        public void onScanResult(int callbackType, ScanResult result);

        /**
         * Callback when batch results are delivered.
         *
         * @param results List of scan results that are previously scanned.
         */
        public void onBatchScanResults(List<ScanResult> results);

        /**
         * Callback when scan could not be started.
         *
         * @param errorCode Error code (one of SCAN_FAILED_*) for scan failure.
         */
        public void onScanFailed(int errorCode);
    }

    public interface ScanRecord {


    }

    public interface BluetoothDevice {

        public String getAddress();

        public String getName();

        public int getType();

        public int getDeviceClass();

        public Peripheral connect(int transport);
    }

    public interface Peripheral {

        public Listener getListener();

        public Responder getResponder();

        // Messages from Java to Swift
        public interface Listener {



        }

        // Messages from Swift back to Java
        public interface Responder {


        }
    }
}
