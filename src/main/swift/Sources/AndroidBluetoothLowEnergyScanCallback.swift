//
//  AndroidLEScanCallback.swift
//  libswiftandroid.so
//
//  Created by Alsey Coleman Miller on 3/21/18.
//

import Foundation
import java_swift
import java_util
//import JNI

public extension Android.Bluetooth.LE {
    
    public typealias ScanCallback = AndroidBluetoothLowEnergyScanCallback
}

public extension Android.Bluetooth.LE.ScanCallback {
    
    public typealias Error = AndroidBluetoothLowEnergyScanCallbackError
}

/// Proxy listener class for Android Bluetooth LE callbacks.
public protocol AndroidBluetoothLowEnergyScanCallback: JavaProtocol {
    
    func onScanResult(callbackType: Android.Bluetooth.LE.ScanCallbackType,
                      result: Android.Bluetooth.LE.ScanResult?)
    
    func onBatchScanResults(results: [Android.Bluetooth.LE.ScanResult])
    
    func onScanFailed(error: Android.Bluetooth.LE.ScanCallback.Error)
}

// MARK: - Supporting Types

public struct AndroidBluetoothLowEnergyScanCallbackError: RawRepresentable, Swift.Error {
    
    public let rawValue: Int
    
    public init(rawValue: Int) {
        
        self.rawValue = rawValue
    }
}

// MARK: - Private

private func AndroidBluetoothLowEnergyScanCallback_onScanResult( _ __env: UnsafeMutablePointer<JNIEnv?>,
                                                                 _ __this: jobject?,
                                                                 _ __swiftObject: jlong,
                                                                 _ callbackType: jint,
                                                                 _ result: jobject? ) -> () {
    
    let swiftCallbackType = AndroidBluetoothLowEnergyScanCallbackType(rawValue: Int(callbackType))
    
    let swiftResult = result != nil ? AndroidBluetoothLowEnergyScanResult(javaObject: result) : nil
    
    AndroidBluetoothLowEnergyScanCallback_ListenerLocal_
        .swiftObject( jniEnv: __env, javaObject: __this, swiftObject: __swiftObject )
        .onScanResult(callbackType: swiftCallbackType, result: swiftResult)
}

private func AndroidBluetoothLowEnergyScanCallback_onBatchScanResults( _ __env: UnsafeMutablePointer<JNIEnv?>,
                                                                 _ __this: jobject?,
                                                                 _ __swiftObject: jlong,
                                                                 _ __results: jobject?) -> () {
    
    let swiftResultsList = __results != nil ? ListForward(javaObject: __results) : nil
    
    let results = swiftResultsList?.toArray()?.map { AndroidBluetoothLowEnergyScanResult(casting: $0)! } ?? []
    
    AndroidBluetoothLowEnergyScanCallback_ListenerLocal_
        .swiftObject( jniEnv: __env, javaObject: __this, swiftObject: __swiftObject )
        .onBatchScanResults(results: results)
}

private func AndroidBluetoothLowEnergyScanCallback_onScanFailed( _ __env: UnsafeMutablePointer<JNIEnv?>,
                                                                 _ __this: jobject?,
                                                                 _ __swiftObject: jlong,
                                                                 _ __errorCode: jint) -> () {
    
    let error = AndroidBluetoothLowEnergyScanCallbackError(rawValue: Int(__errorCode))
    
    AndroidBluetoothLowEnergyScanCallback_ListenerLocal_
        .swiftObject( jniEnv: __env, javaObject: __this, swiftObject: __swiftObject )
        .onScanFailed(error: error)
}

fileprivate class AndroidBluetoothLowEnergyScanCallback_ListenerLocal_: JNILocalProxy<AndroidBluetoothLowEnergyScanCallback, Any> {
    
    fileprivate static let _proxyClass: jclass = {
        var natives = [JNINativeMethod]()
        
        natives.append( JNINativeMethod( name: strdup("__onScanResult"),
                                         signature: strdup("(JILandroid/bluetooth/le/ScanResult;)V"),
                                         fnPtr: unsafeBitCast( AndroidBluetoothLowEnergyScanCallback_onScanResult, to: UnsafeMutableRawPointer.self ) ) )
        
        natives.append( JNINativeMethod( name: strdup("__onBatchScanResults"),
                                         signature: strdup("(JLjava/util/List;)V"),
                                         fnPtr: unsafeBitCast( AndroidBluetoothLowEnergyScanCallback_onScanResult, to: UnsafeMutableRawPointer.self ) ) )
        
        natives.append( JNINativeMethod( name: strdup("__onScanFailed"),
                                         signature: strdup("(JI)V"),
                                         fnPtr: unsafeBitCast( AndroidBluetoothLowEnergyScanCallback_onScanResult, to: UnsafeMutableRawPointer.self ) ) )
        
        natives.append( JNINativeMethod( name: strdup("__finalize"),
                                         signature: strdup("(J)V"),
                                         fnPtr: unsafeBitCast( JNIReleasableProxy__finalize_thunk, to: UnsafeMutableRawPointer.self ) ) )
        
        let clazz = JNI.FindClass( proxyClassName() )
        withUnsafePointer(to: &natives[0]) {
            nativesPtr in
            if JNI.api.RegisterNatives( JNI.env, clazz, nativesPtr, jint(natives.count) ) != jint(JNI_OK) {
                JNI.report( "Unable to register java natives" )
            }
        }
        
        defer { JNI.DeleteLocalRef( clazz ) }
        return JNI.api.NewGlobalRef( JNI.env, clazz )!
    }()
    
    override open class func proxyClassName() -> String { return "com/jmarkstar/swiftandroid/SwiftBluetoothScanCallback" }
    
    override open class func proxyClass() -> jclass? { return _proxyClass }
}

extension AndroidBluetoothLowEnergyScanCallback {
    
    public func localJavaObject( _ locals: UnsafeMutablePointer<[jobject]> ) -> jobject? {
        return AndroidBluetoothLowEnergyScanCallback_ListenerLocal_( owned: self, proto: self ).localJavaObject( locals )
    }
    
}
