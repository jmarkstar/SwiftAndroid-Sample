//
//  Bluetooth.swift
//  libswiftandroid.so
//
//  Created by Alsey Coleman Miller on 3/17/18.
//

import Foundation
import java_swift
import java_util

public final class AndroidBluetoothManager: JavaObject {
    
    private static var JNIClass: jclass?
    
    public convenience init?( casting object: java_swift.JavaObject,
                              _ file: StaticString = #file,
                              _ line: Int = #line ) {
        
        self.init(javaObject: nil)
        
        object.withJavaObject {
            self.javaObject = $0
        }
    }
    
    public convenience init?(context: AndroidContext) {
        
        guard let service = context.systemService(named: .bluetooth)
            else { return nil }
    
        self.init(casting: service)
    }
}
