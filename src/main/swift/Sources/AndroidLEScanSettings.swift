//
//  AndroidLEScanSettings.swift
//  libswiftandroid.so
//
//  Created by Alsey Coleman Miller on 3/20/18.
//

import Foundation
import java_swift
import java_util

public final class AndroidBluetoothLowEnergyScanSettings: JavaObject {
    
    public typealias Builder = AndroidBluetoothLowEnergyScanSettingsBuilder
    
    fileprivate static let javaClassName = "android/bluetooth/le/ScanSettings"
    
    private static var JNIClass: jclass?
    
    public convenience init?( casting object: java_swift.JavaObject,
                              _ file: StaticString = #file,
                              _ line: Int = #line ) {
        
        self.init(javaObject: nil)
        
        object.withJavaObject {
            self.javaObject = $0
        }
    }
    
    private static var new_MethodID_1: jmethodID?
    
    public required init( javaObject: jobject? ) {
        super.init(javaObject: javaObject)
    }
    
    public convenience init() {
        
        var __locals = [jobject]()
        
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        
        let __object = JNIMethod.NewObject(
            className: AndroidBluetoothLowEnergyScanSettings.javaClassName,
            classCache: &AndroidBluetoothLowEnergyScanSettings.JNIClass,
            methodSig: "()V",
            methodCache: &AndroidBluetoothLowEnergyScanSettings.new_MethodID_1,
            args: &__args,
            locals: &__locals )
        
        self.init( javaObject: __object )
        
        JNI.DeleteLocalRef( __object )
    }
}

public final class AndroidBluetoothLowEnergyScanSettingsBuilder: JavaObject {
    
    private static let javaClassName = AndroidBluetoothLowEnergyScanSettings.javaClassName + "$Builder"
    
    private static var JNIClass: jclass?
    
    private static var init_MethodID: jmethodID?
    
    public required init( javaObject: jobject? ) {
        super.init(javaObject: javaObject)
    }
    
    public convenience init?( casting object: java_swift.JavaObject,
                              _ file: StaticString = #file,
                              _ line: Int = #line ) {
        
        self.init(javaObject: nil)
        
        object.withJavaObject {
            self.javaObject = $0
        }
    }
    
    public convenience init() {
        
        var __locals = [jobject]()
        
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        
        let __object = JNIMethod.NewObject(
            className: AndroidBluetoothLowEnergyScanSettingsBuilder.javaClassName,
            classCache: &AndroidBluetoothLowEnergyScanSettingsBuilder.JNIClass,
            methodSig: "()V",
            methodCache: &AndroidBluetoothLowEnergyScanSettingsBuilder.init_MethodID,
            args: &__args,
            locals: &__locals )
        
        self.init( javaObject: __object )
        
        JNI.DeleteLocalRef( __object )
    }
}
