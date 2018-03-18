
import java_swift
import Foundation

final class SwiftMathBinding_ListenerImpl: SwiftMathBinding_ListenerBase {
    
    // one-off call to bind the Java and Swift sections of app
    @_silgen_name("Java_com_jmarkstar_swiftandroid_MainActivity_bind")
    public static func bind( __env: UnsafeMutablePointer<JNIEnv?>, __this: jobject?, __self: jobject? )-> jobject? {
        
        // This Swift instance forwards to Java through JNI
        let responder = SwiftMathBinding_ResponderForward( javaObject: __self )
        
        // This Swift instance receives native calls from Java
        var locals = [jobject]()
        return SwiftMathBinding_ListenerImpl(responder: responder).localJavaObject( &locals )
    }
    
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

final class SwiftListViewBinding_ListenerImpl: SwiftListViewBinding_ListenerBase {
    
    // one-off call to bind the Java and Swift sections of app
    @_silgen_name("Java_com_jmarkstar_swiftandroid_SwiftAdapter_bind")
    public static func bind( __env: UnsafeMutablePointer<JNIEnv?>, __this: jobject?, __self: jobject? )-> jobject? {
        
        // This Swift instance forwards to Java through JNI
        let responder = SwiftListViewBinding_ResponderForward( javaObject: __self )
        
        // This Swift instance receives native calls from Java
        var locals = [jobject]()
        return SwiftListViewBinding_ListenerImpl(responder: responder).localJavaObject( &locals )
    }
    
    init(responder: SwiftListViewBinding_ResponderForward) {
        NSLog("\(type(of: self)): \(#function)")
        self.responder = responder
    }
    
    let responder: SwiftListViewBinding_ResponderForward
    
    override func numberOfRows() -> Int {
        
        NSLog("\(type(of: self)): \(#function)")
        
        return 1000
    }
    
    override func configureCell(cell: SwiftListViewBinding_Cell?, row: Int) {
        
        NSLog("\(type(of: self)): \(#function)")
        
        cell?.setTitle(title: "Swift test \(row)")
    }
}
