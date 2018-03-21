//
//  AndroidBluetoothAdapter.swift
//  libswiftandroid.so
//
//  Created by Alsey Coleman Miller on 3/21/18.
//

import Foundation
import java_swift

public extension Android.Bluetooth {
    
    public typealias Adapter = AndroidBluetoothAdapter
}

public final class AndroidBluetoothAdapter: JavaObject {
    
    fileprivate static let javaClassName = "android/bluetooth/BluetoothAdapter"
    
    private static var JNIClass: jclass?
    
    public convenience init?( casting object: java_swift.JavaObject,
                              _ file: StaticString = #file,
                              _ line: Int = #line ) {
        
        self.init(javaObject: nil)
        
        object.withJavaObject {
            self.javaObject = $0
        }
    }
    
    public required init( javaObject: jobject? ) {
        super.init(javaObject: javaObject)
    }
}
