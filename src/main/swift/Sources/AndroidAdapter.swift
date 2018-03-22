//
//  AndroidAdapter.swift
//  libswiftandroid.so
//
//  Created by Alsey Coleman Miller on 3/21/18.
//

import Foundation
import java_swift

public extension Android.Widget {
    
    public typealias Adapter = AndroidWidgetAdapter
}

open class AndroidWidgetAdapter: JNIObjectProtocol {
    
    // MARK: - Initialization
    
    /*
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
    
    open override var javaObject: jobject?
    
    public override func localJavaObject( _ locals: UnsafeMutablePointer<[jobject]> ) -> jobject? {
        
        return SwiftAdapterBinding_ListenerLocal_( owned: self, proto: self ).localJavaObject( locals )
    }*/
    
    public func localJavaObject( _ locals: UnsafeMutablePointer<[jobject]> ) -> jobject? {
        
        return AndroidBluetoothLowEnergyScanCallback_ListenerLocal_.localJavaObject( locals )
    }
    
    public final func notifyDataSetChanged() {
        
        
    }
    
    // MARK: - Listener
    
    open func getCount() -> Int { return 0 }
    
    func getView(position: Int, convertView: JavaObject?, parent: JavaObject) -> JavaObject {
        
        fatalError()
    }
}

// MARK: - Private

fileprivate extension Android.Widget.Adapter {
    
    /// JNI Cache
    struct JNICache {
        
        /// JNI Java class name
        static let className = "com/jmarkstar/swiftandroid/SwiftAdapter"
        
        /// JNI Java class
        static var jniClass: jclass? = AndroidWidgetAdapter_ListenerLocal._proxyClass
        
        /// JNI Method ID cache
        struct MethodID {
            
            static var notifyDataSetChanged: jmethodID?
        }
    }
}
/*
private typealias SwiftAdapterBinding_Listener_configureCell_0_type = @convention(c) ( _: UnsafeMutablePointer<JNIEnv?>, _: jobject?, _: jlong, _: jobject?, _: jint ) -> ()

private func SwiftAdapterBinding_Listener_configureCell_0( _ __env: UnsafeMutablePointer<JNIEnv?>, _ __this: jobject?, _ __swiftObject: jlong, _ cell: jobject?, _ row: jint ) -> () {
    SwiftAdapterBinding_ListenerLocal_.swiftObject( jniEnv: __env, javaObject: __this, swiftObject: __swiftObject ).configureCell( cell: cell != nil ? SwiftAdapterBinding_CellForward( javaObject: cell ) : nil, row: Int(row) )
}

private typealias SwiftAdapterBinding_Listener_numberOfRows_1_type = @convention(c) ( _: UnsafeMutablePointer<JNIEnv?>, _: jobject?, _: jlong ) -> jint

private func SwiftAdapterBinding_Listener_numberOfRows_1( _ __env: UnsafeMutablePointer<JNIEnv?>, _ __this: jobject?, _ __swiftObject: jlong ) -> jint {
    let __return = SwiftAdapterBinding_ListenerLocal_.swiftObject( jniEnv: __env, javaObject: __this, swiftObject: __swiftObject ).numberOfRows( )
    var __locals = [jobject]()
    return JNI.check( jvalue( i: jint(__return) ).i, &__locals, removeLast: true )
}
*/

private typealias AndroidWidgetAdapter_getCount_type = @convention(c) ( _: UnsafeMutablePointer<JNIEnv?>, _: jobject?, _: jlong) -> (jint)

private func AndroidWidgetAdapter_getCount( _ __env: UnsafeMutablePointer<JNIEnv?>,
                                            _ __this: jobject?,
                                            _ __swiftObject: jlong) -> jint {
    
    let result = AndroidWidgetAdapter_ListenerLocal
        .swiftObject( jniEnv: __env, javaObject: __this, swiftObject: __swiftObject )
        .getCount()
    
    return jint(result)
}

private typealias AndroidWidgetAdapter_getView_type = @convention(c) ( _: UnsafeMutablePointer<JNIEnv?>, _: jobject?, _: jlong, _: jint, _: jobject?, _: jobject?) -> ()

private func AndroidWidgetAdapter_getView( _ __env: UnsafeMutablePointer<JNIEnv?>,
                                            _ __this: jobject?,
                                            _ __swiftObject: jlong,
                                            _ __position: jint,
                                            _ __convertView: jobject?,
                                            _ __parent: jobject?) -> jobject? {
    
    let convertView = JavaObject(javaObject: __convertView)
    
    let parentView = JavaObject(javaObject: __parent)
    
    let result = AndroidWidgetAdapter_ListenerLocal
        .swiftObject( jniEnv: __env, javaObject: __this, swiftObject: __swiftObject )
        .getView(position: Int(__position), convertView: convertView, parent: parentView)()
    
    return 
}

fileprivate class AndroidWidgetAdapter_ListenerLocal: JNILocalProxy<Android.Widget.Adapter, Any> {
    
    fileprivate static let _proxyClass: jclass = {
        
        var natives = [JNINativeMethod]()
        
        let getCountThunk: AndroidWidgetAdapter_getCount_type = AndroidWidgetAdapter_getCount
        
        natives.append( JNINativeMethod(name: strdup("__getCount"),
                                        signature: strdup("(J)I"),
                                        fnPtr: unsafeBitCast( getCountThunk, to: UnsafeMutableRawPointer.self ) ))
        
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
    
    override open class func proxyClassName() -> String { return Android.Widget.Adapter.JNICache.className }
    
    override open class func proxyClass() -> jclass? { return _proxyClass }
    
    func notifyDataSetChanged() {
        
        var __locals = [jobject]()
        
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        
        withJavaObject {
            
            JNIMethod.CallVoidMethod(object: $0,
                methodName: "notifyDataSetChanged",
                methodSig: "()V",
                methodCache: &Android.Widget.Adapter.JNICache.MethodID.notifyDataSetChanged,
                args: &__args,
                locals: &__locals)
        }
    }
}
