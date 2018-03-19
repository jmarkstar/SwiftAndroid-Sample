//
//  Bluetooth.swift
//  libswiftandroid.so
//
//  Created by Alsey Coleman Miller on 3/17/18.
//

import Foundation
import java_swift
import java_util

// dummy
final class SwiftBluetoothBinding_ListenerImpl: SwiftBluetoothBinding_ListenerBase {
    
    //static private(set) var shared: SwiftBluetoothBinding_ListenerImpl!
    
    // one-off call to bind the Java and Swift sections of app
    @_silgen_name("Java_com_jmarkstar_swiftandroid_SwiftBluetoothLowEnergyManager_bind")
    public static func bind( __env: UnsafeMutablePointer<JNIEnv?>, __this: jobject?, __self: jobject? )-> jobject? {
        
        // This Swift instance forwards to Java through JNI
        let responder = SwiftBluetoothBinding_ResponderForward( javaObject: __self )
        
        // This Swift instance receives native calls from Java
        var locals = [jobject]()
        let listener = SwiftBluetoothBinding_ListenerImpl(responder: responder)
        return listener.localJavaObject( &locals )
    }
    
    deinit {
        
        NSLog("\(type(of: self)): \(#function)")
    }
    
    private init(responder: SwiftBluetoothBinding_ResponderForward) {
        
        NSLog("\(type(of: self)): \(#function)")
        
        self.responder = responder
    }
    
    private let responder: SwiftBluetoothBinding_ResponderForward
    
    
}

public final class AndroidBluetoothManager {
    
    public typealias Responder = SwiftBluetoothBinding_Responder
    
    private let responder: Responder
    
    deinit {
        
        NSLog("\(type(of: self)): \(#function)")
    }
    
    public init(_ responder: Responder) {
        
        NSLog("\(type(of: self)): \(#function)")
        
        self.responder = responder
    }
    
    public func startScan() throws {
        
        NSLog("\(type(of: self)): \(#function)")
        
        //responder.startScan(settings: nil, callback: nil)
    }
}
