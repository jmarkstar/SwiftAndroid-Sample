
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
    responder = SwiftMathBinding_ResponderForward( javaObject: __self )

    // This Swift instance receives native calls from Java
    var locals = [jobject]()
    return SwiftMathBinding_ListenerBase().localJavaObject( &locals )
}
