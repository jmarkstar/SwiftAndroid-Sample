//
//  Android.swift
//  libswiftandroid.so
//
//  Created by Alsey Coleman Miller on 3/21/18.
//

import java_swift
//import JNI

/// Android namespace.
public enum Android: JavaPackage {
    
    public static let package = ["android"]
    
    public enum Content: JavaPackage {
        
        public static let package = Android.package + ["content"]
    }
    
    public enum Bluetooth: JavaPackage {
        
        public static let package = Android.package + ["bluetooth"]
        
        public enum LE: JavaPackage {
            
            public static let package = Android.Bluetooth.package + ["le"]
        }
    }
}

public protocol JavaPackage {
    
    static var package: [String] { get }
}

extension JavaObject: CustomStringConvertible {
    
    public var description: String {
        
        get { return self.toString() }
    }
}
