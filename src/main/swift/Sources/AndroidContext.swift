//
//  AndroidContext.swift
//  libswiftandroid.so
//
//  Created by Alsey Coleman Miller on 3/20/18.
//

import Foundation
import java_swift
import java_util

open class AndroidContext: JavaObject {
    
    private static let javaClassName = "android/content/Context"
    
    private static var JNIClass: jclass?
    
    public convenience init?( casting object: java_swift.JavaObject,
                              _ file: StaticString = #file,
                              _ line: Int = #line ) {
        
        self.init(javaObject: nil)
        
        object.withJavaObject {
            self.javaObject = $0
        }
    }
    
    private static var getSystemService_MethodID: jmethodID?
    
    public final func systemService(named systemService: SystemService) -> JavaObject? {
        
        return getSystemService(systemService.rawValue)
    }
    
    private func getSystemService(_ service: String) -> JavaObject? {
        
        var __locals = [jobject]()
        
        var __args = [jvalue]( repeating: jvalue(), count: 1)
        
        __args[0] = JNIType.toJava( value: service, locals: &__locals )
        
        let __return = JNIMethod.CallObjectMethod(object: javaObject,
                                                  methodName: "getSystemService",
                                                  methodSig: "(Ljava/lang/String;)Ljava/lang/Object",
                                                  methodCache: &AndroidContext.getSystemService_MethodID,
                                                  args: &__args,
                                                  locals: &__locals)
        
        defer { JNI.DeleteLocalRef( __return ) }
        
        return __return != nil ? JavaObject( javaObject: __return ) : nil
        
    }
    
    private static var BLUETOOTH_SERVICE_FieldID: jfieldID?
    
    internal static var bluetoothService: String? {
        
        get {
            
            let __value = JNIField.GetStaticObjectField(
                fieldName: "BLUETOOTH_SERVICE",
                fieldType: "Ljava/lang/String;",
                fieldCache: &BLUETOOTH_SERVICE_FieldID,
                className: javaClassName,
                classCache: &JNIClass )
            
            defer { JNI.DeleteLocalRef( __value ) }
            
            return __value != nil ? String( javaObject: __value ) : nil
        }
    }
}

public extension AndroidContext {
    
    public struct SystemService: RawRepresentable {
        
        public let rawValue: String
        
        public init(rawValue: String) {
            
            self.rawValue = rawValue
        }
        
        public static let bluetooth = SystemService(rawValue: AndroidContext.bluetoothService!)
    }
}

extension AndroidContext.SystemService: ExpressibleByStringLiteral {
    
    public init(stringLiteral value: String) {
        
        self.init(rawValue: value)
    }
}
