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

        public void stopScan(ScanCallback callback);
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

        public Peripheral.Responder connect(int transport, Peripheral.Listener listener);
    }

    public interface Peripheral {

        // Messages from Java to Swift
        public interface Listener {

            public void onConnectionStateChange(int status, int newState);

            public void onServicesDiscovered(int status);

            public void onCharacteristicRead(GATTCharacteristic characteristic, int status);

            public void onCharacteristicWrite(GATTCharacteristic characteristic, int status);

            public void onCharacteristicChanged(GATTCharacteristic characteristic);

            public void onDescriptorRead(GATTDescriptor descriptor,
                                         int status);

            public void onDescriptorWrite(GATTDescriptor descriptor,
                                          int status);

            public void onReliableWriteCompleted(int status);

            public void onReadRemoteRssi(int rssi, int status);

            public void onMtuChanged(int mtu, int status);
        }

        // Messages from Swift back to Java
        public interface Responder {

            public void close();

            public void disconnect();

            public boolean refresh();

            public List<GATTService> getServices();

            public boolean readDescriptor(GATTDescriptor descriptor);

            public boolean writeDescriptor(GATTDescriptor descriptor);

            public boolean beginReliableWrite();

            public boolean executeReliableWrite();

            public void abortReliableWrite();

            public boolean setCharacteristicNotification(GATTCharacteristic characteristic,
                                                         boolean enable);

            public boolean readRemoteRssi();

            public boolean requestMtu(int mtu);

            public boolean requestConnectionPriority(int connectionPriority);
        }
    }

    public interface GATTService {


    }

    public interface GATTCharacteristic {


    }

    public interface GATTDescriptor {


    }
}
