
import java_swift
import Foundation

// responder variable moved to Statics.swift
// so it isn't reset when class is injected.
//// link back to Java side of Application
//var responder: SwiftMathBinding_ResponderForward!

// one-off call to bind the Java and Swift sections of app
@_silgen_name("Java_com_jmarkstar_swiftandroid_MainActivity_bind")
public func bind_samples( __env: UnsafeMutablePointer<JNIEnv?>, __this: jobject?, __self: jobject? )-> jobject? {

    // This Swift instance forwards to Java through JNI
    let responder = SwiftMathBinding_ResponderForward( javaObject: __self )

    // This Swift instance receives native calls from Java
    var locals = [jobject]()
    return SwiftMathBinding_ListenerImpl(responder: responder).localJavaObject( &locals )
}

final class SwiftMathBinding_ListenerImpl: SwiftMathBinding_ListenerBase {
    
    init(responder: SwiftMathBinding_ResponderForward) {
        self.responder = responder
    }
    
    let responder: SwiftMathBinding_ResponderForward

    override func processSum( num1: Int, num2: Int ) {
        
        let result = num1 + num2
        
        NSLog("Swift Math: \(num1) + \(num2) = \(result)")
        
        responder.processedSum(result: result)
    }
}

// one-off call to bind the Java and Swift sections of app
@_silgen_name("Java_com_jmarkstar_swiftandroid_SwiftAdapter_bind")
public func bind_adapter( __env: UnsafeMutablePointer<JNIEnv?>, __this: jobject?, __self: jobject? )-> jobject? {

    // This Swift instance forwards to Java through JNI
    let responder = SwiftListViewBinding_ResponderForward( javaObject: __self )
    
    // This Swift instance receives native calls from Java
    var locals = [jobject]()
    return SwiftListViewBinding_ListenerImpl(responder: responder).localJavaObject( &locals )
}

final class SwiftListViewBinding_ListenerImpl: SwiftListViewBinding_ListenerBase {
    
    init(responder: SwiftListViewBinding_ResponderForward) {
        self.responder = responder
    }
    
    let responder: SwiftListViewBinding_ResponderForward
    
    override func numberOfRows() -> Int {
        
        NSLog("Swift Adapter: \(#function)")
        
        return 5
    }
    
    override func configureCell(cell: SwiftListViewBinding_Cell?, row: Int) {
        
        NSLog("Swift Adapter: \(#function)")
        
        cell?.setTitle(title: "Swift test \(row)")
    }
}

