//
//  AndroidLEScanSettings.swift
//  libswiftandroid.so
//
//  Created by Alsey Coleman Miller on 3/20/18.
//

import Foundation
import java_swift
import java_util

public extension Android.Bluetooth.LE {
    
    public typealias ScanSettings = AndroidBluetoothLowEnergyScanSettings
}

public extension Android.Bluetooth.LE.ScanSettings {
    
    public typealias Builder = AndroidBluetoothLowEnergyScanSettingsBuilder
}

public final class AndroidBluetoothLowEnergyScanSettings: JavaObject {
    
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
    
    public required init( javaObject: jobject? ) {
        super.init(javaObject: javaObject)
    }
    
    private static var new_MethodID_1: jmethodID?
    
    public static var `default`: Android.Bluetooth.LE.ScanSettings {
        
        struct Cache {
            
            static let builder = Android.Bluetooth.LE.ScanSettings.Builder()
        }
        
        return Cache.builder.build()
    }
    
    private static var SCAN_MODE_BALANCED_MethodID: jmethodID?
    
    internal static var SCAN_MODE_BALANCED: Int {
        
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

// MARK: - Builder

public final class AndroidBluetoothLowEnergyScanSettingsBuilder: JavaObject {
    
    private static let javaClassName = Android.Bluetooth.LE.ScanSettings.javaClassName + "$Builder"
    
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
    
    public func build() -> Android.Bluetooth.LE.ScanSettings {
        
        var __locals = [jobject]()
        
        var __args = [jvalue].init(repeating: jvalue(), count: 1)
        
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
    public func setScanMode(_ newValue: Android.Bluetooth.LE.ScanMode) -> Android.Bluetooth.LE.ScanSettings.Builder {
        
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
