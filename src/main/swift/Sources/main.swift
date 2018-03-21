
import java_swift
import java_lang
import java_util
import Foundation

final class SwiftBluetoothScannerActivityBinding_ListenerImpl: SwiftBluetoothScannerActivityBinding_ListenerBase {
    
    // one-off call to bind the Java and Swift sections of app
    @_silgen_name("Java_com_jmarkstar_swiftandroid_MainActivity_bind")
    public static func bind( __env: UnsafeMutablePointer<JNIEnv?>, __this: jobject?, __self: jobject? )-> jobject? {
        
        // This Swift instance forwards to Java through JNI
        let responder = SwiftBluetoothScannerActivityBinding_ResponderForward( javaObject: __self )
        
        // This Swift instance receives native calls from Java
        var locals = [jobject]()
        return SwiftBluetoothScannerActivityBinding_ListenerImpl(responder: responder).localJavaObject( &locals )
    }
    
    deinit {
        
        NSLog("\(type(of: self)): \(#function)")
    }
    
    init(responder: SwiftBluetoothScannerActivityBinding_ResponderForward) {
        
        NSLog("\(type(of: self)): \(#function)")
        
        self.responder = responder
    }
    
    let responder: SwiftBluetoothScannerActivityBinding_ResponderForward
    
    lazy var context: AndroidContext = AndroidContext(javaObject: self.responder.javaObject)
    
    lazy var bluetoothManager: AndroidBluetoothManager = AndroidBluetoothManager(context: self.context)!
    
    override func viewDidLoad() {
        
        responder.getAdapter().reloadData()
        
        if let scanner = bluetoothManager.adapter?.lowEnergyScanner {
            
            NSLog("Will Bluetooth LE scan")
            
            class TestCallback: Android.Bluetooth.LE.ScanCallback {
                
                func onScanResult(callbackType: Android.Bluetooth.LE.ScanCallbackType,
                                  result: Android.Bluetooth.LE.ScanResult?) {
                    
                    NSLog("\(#function) \(callbackType) \(result!)")
                }
                
                func onScanFailed(error: AndroidBluetoothLowEnergyScanCallback.Error) {
                    
                    NSLog("\(#function) \(error)")
                }
                
                func onBatchScanResults(results: [Android.Bluetooth.LE.ScanResult]) {
                    
                    NSLog("\(#function) \(results)")
                }
            }
            
            scanner.startScan(callback: TestCallback())
        }
    }
}

final class SwiftMathBinding_ListenerImpl: SwiftMathBinding_ListenerBase {
    
    /*
    // one-off call to bind the Java and Swift sections of app
    @_silgen_name("Java_com_jmarkstar_swiftandroid_MainActivity_bind")
    public static func bind( __env: UnsafeMutablePointer<JNIEnv?>, __this: jobject?, __self: jobject? )-> jobject? {
        
        // This Swift instance forwards to Java through JNI
        let responder = SwiftMathBinding_ResponderForward( javaObject: __self )
        
        // This Swift instance receives native calls from Java
        var locals = [jobject]()
        return SwiftMathBinding_ListenerImpl(responder: responder).localJavaObject( &locals )
    }*/
    
    deinit {
        
        NSLog("\(type(of: self)) \(#function)")
    }
    
    init(responder: SwiftMathBinding_ResponderForward) {
        self.responder = responder
    }
    
    let responder: SwiftMathBinding_ResponderForward
    
    override func processSum( num1: Int, num2: Int ) {
        
        let result = num1 + num2
        
        NSLog("Swift Math: \(num1) + \(num2) = \(result)")
        
        responder.processedSum(result: result)
    }
}

final class SwiftAdapterBinding_ListenerImpl: SwiftAdapterBinding_ListenerBase {
    
    // one-off call to bind the Java and Swift sections of app
    @_silgen_name("Java_com_jmarkstar_swiftandroid_SwiftAdapter_bind")
    public static func bind( __env: UnsafeMutablePointer<JNIEnv?>, __this: jobject?, __self: jobject? )-> jobject? {
        
        // This Swift instance forwards to Java through JNI
        let responder = SwiftAdapterBinding_ResponderForward( javaObject: __self )
        
        // This Swift instance receives native calls from Java
        var locals = [jobject]()
        return SwiftAdapterBinding_ListenerImpl(responder: responder).localJavaObject( &locals )
    }
    
    init(responder: SwiftAdapterBinding_ResponderForward) {
        
        self.responder = responder
    }
    
    let responder: SwiftAdapterBinding_ResponderForward
    
    override func numberOfRows() -> Int {
        
        return 1000
    }
    
    override func configureCell(cell: SwiftAdapterBinding_Cell?, row: Int) {
        
        cell?.setTitle(title: "Swift test \(row)")
    }
}
