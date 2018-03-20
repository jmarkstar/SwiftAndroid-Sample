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
    
    private static var SCAN_MODE_BALANCED_MethodID: jmethodID?
    
    fileprivate static var SCAN_MODE_BALANCED: Int {
        
        get {
            
            let __value = JNIField.GetStaticIntField(
                fieldName: "SCAN_MODE_BALANCED",
                fieldType: "I",
                fieldCache: &SCAN_MODE_BALANCED_MethodID,
                className: javaClassName,
                classCache: &JNIClass )
            
            return Int(__value)
        }
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
    
    private static var build_MethodID: jmethodID?
    
    public func build() -> AndroidBluetoothLowEnergyScanSettings {
        
        var __locals = [jobject]()
        
        var __args = [jvalue]()
        
        let __return = JNIMethod.CallObjectMethod(object: javaObject,
                                                  methodName: "build",
                                                  methodSig: "()Landroid/bluetooth/le/ScanSettings;",
                                                  methodCache: &AndroidBluetoothLowEnergyScanSettingsBuilder.build_MethodID,
                                                  args: &__args,
                                                  locals: &__locals)
        
        defer { JNI.DeleteLocalRef( __return ) }

        return AndroidBluetoothLowEnergyScanSettings( javaObject: __return )
    }
    
    private static var setScanMode_MethodID: jmethodID?
    
    // public android.bluetooth.le.ScanSettings$Builder setScanMode(int);
    // descriptor: (I)Landroid/bluetooth/le/ScanSettings$Builder;
    public func setScanMode(_ newValue: AndroidBluetoothLowEnergyScanSettings.ScanMode) -> AndroidBluetoothLowEnergyScanSettingsBuilder {
        
        var __locals = [jobject]()
        
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        
        __args[0] = jvalue(i: jint(newValue.rawValue))
        
        JNIMethod.CallVoidMethod(
            object: javaObject,
            methodName: "setScanMode",
            methodSig: "(I)Landroid/bluetooth/le/ScanSettings$Builder;",
            methodCache: &AndroidBluetoothLowEnergyScanSettingsBuilder.setScanMode_MethodID,
            args: &__args,
            locals: &__locals )
        
        let __return = JNIMethod.CallObjectMethod(object: javaObject,
                                                  methodName: "setScanMode",
                                                  methodSig: "(I)Landroid/bluetooth/le/ScanSettings$Builder;",
                                                  methodCache: &AndroidBluetoothLowEnergyScanSettingsBuilder.setScanMode_MethodID,
                                                  args: &__args,
                                                  locals: &__locals)
        
        defer { JNI.DeleteLocalRef( __return ) }
        
        return AndroidBluetoothLowEnergyScanSettingsBuilder(javaObject: __return)
    }
}

public extension AndroidBluetoothLowEnergyScanSettings {
    
    public struct ScanMode: RawRepresentable {
        
        public let rawValue: Int
        
        public init(rawValue: Int) {
            self.rawValue = rawValue
        }
        
        /**
         * Perform Bluetooth LE scan in balanced power mode. Scan results are returned at a rate that
         * provides a good trade-off between scan frequency and power consumption.
         */
        public static let balanced = ScanMode(rawValue: AndroidBluetoothLowEnergyScanSettings.SCAN_MODE_BALANCED)
    }
}
