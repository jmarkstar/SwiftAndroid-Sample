
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
    
    private lazy var layoutInflater: Android.View.LayoutInflater = Android.View.LayoutInflater(casting: self.responder.getLayoutInflater())!
    
    private lazy var listAdapter: ListAdapter = ListAdapter(layoutInflater: self.layoutInflater,
                                                            cellResource: self.responder.getCellResource(),
                                                            textViewResource: self.responder.getTextViewResource())
    
    override func viewDidLoad() {
        
        NSLog("\(type(of: self)): \(#function)")
        
        listAdapter.withJavaObject { [unowned self] in
            self.responder.setAdapter(adapter: JavaObject(javaObject: $0))
        }
        
        let scanCallback = ScanCallback { [weak self] in
            
            self?.listAdapter.data.append($0)
            
            // FIXME: Properly refresh list view
            self?.listAdapter.withJavaObject {
                self?.responder.setAdapter(adapter: JavaObject(javaObject: $0))
            }
        }
        
        Android.Bluetooth.Adapter.default?.lowEnergyScanner?.startScan(callback: scanCallback)
    }
}

extension SwiftBluetoothScannerActivityBinding_ListenerImpl {
    
    class ListAdapter: Android.Widget.Adapter {
        
        let layoutInflater: Android.View.LayoutInflater
        
        let cellResource: Int
        
        let textViewResource: Int
        
        init(layoutInflater: Android.View.LayoutInflater,
             cellResource: Int,
             textViewResource: Int) {
            
            self.layoutInflater = layoutInflater
            self.cellResource = cellResource
            self.textViewResource = textViewResource
        }
        
        var data = [Android.Bluetooth.LE.ScanResult]() {
            
            didSet {
                NSLog("\(type(of: self)): \(#function)")
                self.notifyDataSetChanged()
            }
        }
        
        override func getCount() -> Int {
            
            NSLog("\(type(of: self)): \(#function)")
            
            return data.count
        }
        
        override func getView(position row: Int, convertView: Android.View.View?, parent: Android.View.ViewGroup) -> Android.View.View {
            
            NSLog("\(type(of: self)): \(#function)")
            
            let view: Android.View.View = /* convertView ?? */ layoutInflater.inflate(resource: cellResource,
                                                                                root: parent,
                                                                                attachToRoot: false)
            
            //NSLog("view.")
            
            guard let textViewObject = view.findViewById(textViewResource)
                else { fatalError("No view for \(textViewResource)") }
            
            let textView = Android.Widget.TextView(casting: textViewObject)
            
            let item = self.data[row]
            
            textView?.text = item.device.address.description
            
            return view
        }
    }
}

extension SwiftBluetoothScannerActivityBinding_ListenerImpl {
    
    struct ScanCallback: Android.Bluetooth.LE.ScanCallback {
        
        var scanResult: (Android.Bluetooth.LE.ScanResult) -> ()
        
        func onScanResult(callbackType: Android.Bluetooth.LE.ScanCallbackType,
                          result: Android.Bluetooth.LE.ScanResult) {
            
            scanResult(result)
            
            NSLog("\(#function) \(result.device.address)")
        }
        
        func onScanFailed(error: AndroidBluetoothLowEnergyScanCallback.Error) {
            
            NSLog("\(#function) \(error)")
        }
        
        func onBatchScanResults(results: [Android.Bluetooth.LE.ScanResult]) {
            
            NSLog("\(#function) \(results.count)")
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
