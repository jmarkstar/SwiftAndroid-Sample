//
//  AndroidContextSystemService.swift
//  libswiftandroid.so
//
//  Created by Alsey Coleman Miller on 3/21/18.
//

public extension Android.Content.Context {
    
    public typealias SystemService = AndroidContextSystemService
}

public struct AndroidContextSystemService: RawRepresentable {
    
    public let rawValue: String
    
    public init(rawValue: String) {
        
        self.rawValue = rawValue
    }
    
    public static let bluetooth = Android.Content.Context.SystemService(rawValue: Android.Content.Context.bluetoothService!)
}

extension Android.Content.Context.SystemService: ExpressibleByStringLiteral {
    
    public init(stringLiteral value: String) {
        
        self.init(rawValue: value)
    }
}
