
import java_swift

/// generated by: genswift.java 'java/lang|java/util|java/sql' 'Sources' '../java' ///

/// interface com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener ///

public protocol SwiftBluetoothBinding_Peripheral_Listener: JavaProtocol {

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onCharacteristicChanged(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener,com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$GATTCharacteristic)

    func onCharacteristicChanged( gatt: SwiftBluetoothBinding_Peripheral_Listener?, characteristic: SwiftBluetoothBinding_GATTCharacteristic? )

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onCharacteristicRead(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener,com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$GATTCharacteristic,int)

    func onCharacteristicRead( gatt: SwiftBluetoothBinding_Peripheral_Listener?, characteristic: SwiftBluetoothBinding_GATTCharacteristic?, status: Int )

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onCharacteristicWrite(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener,com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$GATTCharacteristic,int)

    func onCharacteristicWrite( gatt: SwiftBluetoothBinding_Peripheral_Listener?, characteristic: SwiftBluetoothBinding_GATTCharacteristic?, status: Int )

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onConnectionStateChange(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener,int,int)

    func onConnectionStateChange( gatt: SwiftBluetoothBinding_Peripheral_Listener?, status: Int, newState: Int )

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onDescriptorRead(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener,com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$GATTDescriptor,int)

    func onDescriptorRead( gatt: SwiftBluetoothBinding_Peripheral_Listener?, descriptor: SwiftBluetoothBinding_GATTDescriptor?, status: Int )

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onDescriptorWrite(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener,com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$GATTDescriptor,int)

    func onDescriptorWrite( gatt: SwiftBluetoothBinding_Peripheral_Listener?, descriptor: SwiftBluetoothBinding_GATTDescriptor?, status: Int )

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onMtuChanged(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener,int,int)

    func onMtuChanged( gatt: SwiftBluetoothBinding_Peripheral_Listener?, mtu: Int, status: Int )

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onReadRemoteRssi(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener,int,int)

    func onReadRemoteRssi( gatt: SwiftBluetoothBinding_Peripheral_Listener?, rssi: Int, status: Int )

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onReliableWriteCompleted(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener,int)

    func onReliableWriteCompleted( gatt: SwiftBluetoothBinding_Peripheral_Listener?, status: Int )

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onServicesDiscovered(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener,int)

    func onServicesDiscovered( gatt: SwiftBluetoothBinding_Peripheral_Listener?, status: Int )

}


open class SwiftBluetoothBinding_Peripheral_ListenerForward: JNIObjectForward, SwiftBluetoothBinding_Peripheral_Listener {

    private static var SwiftBluetoothBinding_Peripheral_ListenerJNIClass: jclass?

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onCharacteristicChanged(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener,com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$GATTCharacteristic)

    private static var onCharacteristicChanged_MethodID_11: jmethodID?

    open func onCharacteristicChanged( gatt: SwiftBluetoothBinding_Peripheral_Listener?, characteristic: SwiftBluetoothBinding_GATTCharacteristic? ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        __args[0] = JNIType.toJava( value: gatt, locals: &__locals )
        __args[1] = JNIType.toJava( value: characteristic, locals: &__locals )
        JNIMethod.CallVoidMethod( object: javaObject, methodName: "onCharacteristicChanged", methodSig: "(Lcom/johnholdsworth/swiftbindings/SwiftBluetoothBinding$Peripheral$Listener;Lcom/johnholdsworth/swiftbindings/SwiftBluetoothBinding$GATTCharacteristic;)V", methodCache: &SwiftBluetoothBinding_Peripheral_ListenerForward.onCharacteristicChanged_MethodID_11, args: &__args, locals: &__locals )
    }

    open func onCharacteristicChanged( _ _gatt: SwiftBluetoothBinding_Peripheral_Listener?, _ _characteristic: SwiftBluetoothBinding_GATTCharacteristic? ) {
        onCharacteristicChanged( gatt: _gatt, characteristic: _characteristic )
    }

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onCharacteristicRead(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener,com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$GATTCharacteristic,int)

    private static var onCharacteristicRead_MethodID_12: jmethodID?

    open func onCharacteristicRead( gatt: SwiftBluetoothBinding_Peripheral_Listener?, characteristic: SwiftBluetoothBinding_GATTCharacteristic?, status: Int ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 3 )
        __args[0] = JNIType.toJava( value: gatt, locals: &__locals )
        __args[1] = JNIType.toJava( value: characteristic, locals: &__locals )
        __args[2] = jvalue( i: jint(status) )
        JNIMethod.CallVoidMethod( object: javaObject, methodName: "onCharacteristicRead", methodSig: "(Lcom/johnholdsworth/swiftbindings/SwiftBluetoothBinding$Peripheral$Listener;Lcom/johnholdsworth/swiftbindings/SwiftBluetoothBinding$GATTCharacteristic;I)V", methodCache: &SwiftBluetoothBinding_Peripheral_ListenerForward.onCharacteristicRead_MethodID_12, args: &__args, locals: &__locals )
    }

    open func onCharacteristicRead( _ _gatt: SwiftBluetoothBinding_Peripheral_Listener?, _ _characteristic: SwiftBluetoothBinding_GATTCharacteristic?, _ _status: Int ) {
        onCharacteristicRead( gatt: _gatt, characteristic: _characteristic, status: _status )
    }

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onCharacteristicWrite(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener,com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$GATTCharacteristic,int)

    private static var onCharacteristicWrite_MethodID_13: jmethodID?

    open func onCharacteristicWrite( gatt: SwiftBluetoothBinding_Peripheral_Listener?, characteristic: SwiftBluetoothBinding_GATTCharacteristic?, status: Int ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 3 )
        __args[0] = JNIType.toJava( value: gatt, locals: &__locals )
        __args[1] = JNIType.toJava( value: characteristic, locals: &__locals )
        __args[2] = jvalue( i: jint(status) )
        JNIMethod.CallVoidMethod( object: javaObject, methodName: "onCharacteristicWrite", methodSig: "(Lcom/johnholdsworth/swiftbindings/SwiftBluetoothBinding$Peripheral$Listener;Lcom/johnholdsworth/swiftbindings/SwiftBluetoothBinding$GATTCharacteristic;I)V", methodCache: &SwiftBluetoothBinding_Peripheral_ListenerForward.onCharacteristicWrite_MethodID_13, args: &__args, locals: &__locals )
    }

    open func onCharacteristicWrite( _ _gatt: SwiftBluetoothBinding_Peripheral_Listener?, _ _characteristic: SwiftBluetoothBinding_GATTCharacteristic?, _ _status: Int ) {
        onCharacteristicWrite( gatt: _gatt, characteristic: _characteristic, status: _status )
    }

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onConnectionStateChange(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener,int,int)

    private static var onConnectionStateChange_MethodID_14: jmethodID?

    open func onConnectionStateChange( gatt: SwiftBluetoothBinding_Peripheral_Listener?, status: Int, newState: Int ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 3 )
        __args[0] = JNIType.toJava( value: gatt, locals: &__locals )
        __args[1] = jvalue( i: jint(status) )
        __args[2] = jvalue( i: jint(newState) )
        JNIMethod.CallVoidMethod( object: javaObject, methodName: "onConnectionStateChange", methodSig: "(Lcom/johnholdsworth/swiftbindings/SwiftBluetoothBinding$Peripheral$Listener;II)V", methodCache: &SwiftBluetoothBinding_Peripheral_ListenerForward.onConnectionStateChange_MethodID_14, args: &__args, locals: &__locals )
    }

    open func onConnectionStateChange( _ _gatt: SwiftBluetoothBinding_Peripheral_Listener?, _ _status: Int, _ _newState: Int ) {
        onConnectionStateChange( gatt: _gatt, status: _status, newState: _newState )
    }

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onDescriptorRead(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener,com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$GATTDescriptor,int)

    private static var onDescriptorRead_MethodID_15: jmethodID?

    open func onDescriptorRead( gatt: SwiftBluetoothBinding_Peripheral_Listener?, descriptor: SwiftBluetoothBinding_GATTDescriptor?, status: Int ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 3 )
        __args[0] = JNIType.toJava( value: gatt, locals: &__locals )
        __args[1] = JNIType.toJava( value: descriptor, locals: &__locals )
        __args[2] = jvalue( i: jint(status) )
        JNIMethod.CallVoidMethod( object: javaObject, methodName: "onDescriptorRead", methodSig: "(Lcom/johnholdsworth/swiftbindings/SwiftBluetoothBinding$Peripheral$Listener;Lcom/johnholdsworth/swiftbindings/SwiftBluetoothBinding$GATTDescriptor;I)V", methodCache: &SwiftBluetoothBinding_Peripheral_ListenerForward.onDescriptorRead_MethodID_15, args: &__args, locals: &__locals )
    }

    open func onDescriptorRead( _ _gatt: SwiftBluetoothBinding_Peripheral_Listener?, _ _descriptor: SwiftBluetoothBinding_GATTDescriptor?, _ _status: Int ) {
        onDescriptorRead( gatt: _gatt, descriptor: _descriptor, status: _status )
    }

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onDescriptorWrite(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener,com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$GATTDescriptor,int)

    private static var onDescriptorWrite_MethodID_16: jmethodID?

    open func onDescriptorWrite( gatt: SwiftBluetoothBinding_Peripheral_Listener?, descriptor: SwiftBluetoothBinding_GATTDescriptor?, status: Int ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 3 )
        __args[0] = JNIType.toJava( value: gatt, locals: &__locals )
        __args[1] = JNIType.toJava( value: descriptor, locals: &__locals )
        __args[2] = jvalue( i: jint(status) )
        JNIMethod.CallVoidMethod( object: javaObject, methodName: "onDescriptorWrite", methodSig: "(Lcom/johnholdsworth/swiftbindings/SwiftBluetoothBinding$Peripheral$Listener;Lcom/johnholdsworth/swiftbindings/SwiftBluetoothBinding$GATTDescriptor;I)V", methodCache: &SwiftBluetoothBinding_Peripheral_ListenerForward.onDescriptorWrite_MethodID_16, args: &__args, locals: &__locals )
    }

    open func onDescriptorWrite( _ _gatt: SwiftBluetoothBinding_Peripheral_Listener?, _ _descriptor: SwiftBluetoothBinding_GATTDescriptor?, _ _status: Int ) {
        onDescriptorWrite( gatt: _gatt, descriptor: _descriptor, status: _status )
    }

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onMtuChanged(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener,int,int)

    private static var onMtuChanged_MethodID_17: jmethodID?

    open func onMtuChanged( gatt: SwiftBluetoothBinding_Peripheral_Listener?, mtu: Int, status: Int ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 3 )
        __args[0] = JNIType.toJava( value: gatt, locals: &__locals )
        __args[1] = jvalue( i: jint(mtu) )
        __args[2] = jvalue( i: jint(status) )
        JNIMethod.CallVoidMethod( object: javaObject, methodName: "onMtuChanged", methodSig: "(Lcom/johnholdsworth/swiftbindings/SwiftBluetoothBinding$Peripheral$Listener;II)V", methodCache: &SwiftBluetoothBinding_Peripheral_ListenerForward.onMtuChanged_MethodID_17, args: &__args, locals: &__locals )
    }

    open func onMtuChanged( _ _gatt: SwiftBluetoothBinding_Peripheral_Listener?, _ _mtu: Int, _ _status: Int ) {
        onMtuChanged( gatt: _gatt, mtu: _mtu, status: _status )
    }

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onReadRemoteRssi(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener,int,int)

    private static var onReadRemoteRssi_MethodID_18: jmethodID?

    open func onReadRemoteRssi( gatt: SwiftBluetoothBinding_Peripheral_Listener?, rssi: Int, status: Int ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 3 )
        __args[0] = JNIType.toJava( value: gatt, locals: &__locals )
        __args[1] = jvalue( i: jint(rssi) )
        __args[2] = jvalue( i: jint(status) )
        JNIMethod.CallVoidMethod( object: javaObject, methodName: "onReadRemoteRssi", methodSig: "(Lcom/johnholdsworth/swiftbindings/SwiftBluetoothBinding$Peripheral$Listener;II)V", methodCache: &SwiftBluetoothBinding_Peripheral_ListenerForward.onReadRemoteRssi_MethodID_18, args: &__args, locals: &__locals )
    }

    open func onReadRemoteRssi( _ _gatt: SwiftBluetoothBinding_Peripheral_Listener?, _ _rssi: Int, _ _status: Int ) {
        onReadRemoteRssi( gatt: _gatt, rssi: _rssi, status: _status )
    }

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onReliableWriteCompleted(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener,int)

    private static var onReliableWriteCompleted_MethodID_19: jmethodID?

    open func onReliableWriteCompleted( gatt: SwiftBluetoothBinding_Peripheral_Listener?, status: Int ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        __args[0] = JNIType.toJava( value: gatt, locals: &__locals )
        __args[1] = jvalue( i: jint(status) )
        JNIMethod.CallVoidMethod( object: javaObject, methodName: "onReliableWriteCompleted", methodSig: "(Lcom/johnholdsworth/swiftbindings/SwiftBluetoothBinding$Peripheral$Listener;I)V", methodCache: &SwiftBluetoothBinding_Peripheral_ListenerForward.onReliableWriteCompleted_MethodID_19, args: &__args, locals: &__locals )
    }

    open func onReliableWriteCompleted( _ _gatt: SwiftBluetoothBinding_Peripheral_Listener?, _ _status: Int ) {
        onReliableWriteCompleted( gatt: _gatt, status: _status )
    }

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onServicesDiscovered(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener,int)

    private static var onServicesDiscovered_MethodID_20: jmethodID?

    open func onServicesDiscovered( gatt: SwiftBluetoothBinding_Peripheral_Listener?, status: Int ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        __args[0] = JNIType.toJava( value: gatt, locals: &__locals )
        __args[1] = jvalue( i: jint(status) )
        JNIMethod.CallVoidMethod( object: javaObject, methodName: "onServicesDiscovered", methodSig: "(Lcom/johnholdsworth/swiftbindings/SwiftBluetoothBinding$Peripheral$Listener;I)V", methodCache: &SwiftBluetoothBinding_Peripheral_ListenerForward.onServicesDiscovered_MethodID_20, args: &__args, locals: &__locals )
    }

    open func onServicesDiscovered( _ _gatt: SwiftBluetoothBinding_Peripheral_Listener?, _ _status: Int ) {
        onServicesDiscovered( gatt: _gatt, status: _status )
    }

}

private typealias SwiftBluetoothBinding_Peripheral_Listener_onCharacteristicChanged_0_type = @convention(c) ( _: UnsafeMutablePointer<JNIEnv?>, _: jobject?, _: jlong, _: jobject?, _: jobject? ) -> ()

private func SwiftBluetoothBinding_Peripheral_Listener_onCharacteristicChanged_0( _ __env: UnsafeMutablePointer<JNIEnv?>, _ __this: jobject?, _ __swiftObject: jlong, _ gatt: jobject?, _ characteristic: jobject? ) -> () {
    SwiftBluetoothBinding_Peripheral_ListenerLocal_.swiftObject( jniEnv: __env, javaObject: __this, swiftObject: __swiftObject ).onCharacteristicChanged( gatt: gatt != nil ? SwiftBluetoothBinding_Peripheral_ListenerForward( javaObject: gatt ) : nil, characteristic: characteristic != nil ? SwiftBluetoothBinding_GATTCharacteristicForward( javaObject: characteristic ) : nil )
}

private typealias SwiftBluetoothBinding_Peripheral_Listener_onCharacteristicRead_1_type = @convention(c) ( _: UnsafeMutablePointer<JNIEnv?>, _: jobject?, _: jlong, _: jobject?, _: jobject?, _: jint ) -> ()

private func SwiftBluetoothBinding_Peripheral_Listener_onCharacteristicRead_1( _ __env: UnsafeMutablePointer<JNIEnv?>, _ __this: jobject?, _ __swiftObject: jlong, _ gatt: jobject?, _ characteristic: jobject?, _ status: jint ) -> () {
    SwiftBluetoothBinding_Peripheral_ListenerLocal_.swiftObject( jniEnv: __env, javaObject: __this, swiftObject: __swiftObject ).onCharacteristicRead( gatt: gatt != nil ? SwiftBluetoothBinding_Peripheral_ListenerForward( javaObject: gatt ) : nil, characteristic: characteristic != nil ? SwiftBluetoothBinding_GATTCharacteristicForward( javaObject: characteristic ) : nil, status: Int(status) )
}

private typealias SwiftBluetoothBinding_Peripheral_Listener_onCharacteristicWrite_2_type = @convention(c) ( _: UnsafeMutablePointer<JNIEnv?>, _: jobject?, _: jlong, _: jobject?, _: jobject?, _: jint ) -> ()

private func SwiftBluetoothBinding_Peripheral_Listener_onCharacteristicWrite_2( _ __env: UnsafeMutablePointer<JNIEnv?>, _ __this: jobject?, _ __swiftObject: jlong, _ gatt: jobject?, _ characteristic: jobject?, _ status: jint ) -> () {
    SwiftBluetoothBinding_Peripheral_ListenerLocal_.swiftObject( jniEnv: __env, javaObject: __this, swiftObject: __swiftObject ).onCharacteristicWrite( gatt: gatt != nil ? SwiftBluetoothBinding_Peripheral_ListenerForward( javaObject: gatt ) : nil, characteristic: characteristic != nil ? SwiftBluetoothBinding_GATTCharacteristicForward( javaObject: characteristic ) : nil, status: Int(status) )
}

private typealias SwiftBluetoothBinding_Peripheral_Listener_onConnectionStateChange_3_type = @convention(c) ( _: UnsafeMutablePointer<JNIEnv?>, _: jobject?, _: jlong, _: jobject?, _: jint, _: jint ) -> ()

private func SwiftBluetoothBinding_Peripheral_Listener_onConnectionStateChange_3( _ __env: UnsafeMutablePointer<JNIEnv?>, _ __this: jobject?, _ __swiftObject: jlong, _ gatt: jobject?, _ status: jint, _ newState: jint ) -> () {
    SwiftBluetoothBinding_Peripheral_ListenerLocal_.swiftObject( jniEnv: __env, javaObject: __this, swiftObject: __swiftObject ).onConnectionStateChange( gatt: gatt != nil ? SwiftBluetoothBinding_Peripheral_ListenerForward( javaObject: gatt ) : nil, status: Int(status), newState: Int(newState) )
}

private typealias SwiftBluetoothBinding_Peripheral_Listener_onDescriptorRead_4_type = @convention(c) ( _: UnsafeMutablePointer<JNIEnv?>, _: jobject?, _: jlong, _: jobject?, _: jobject?, _: jint ) -> ()

private func SwiftBluetoothBinding_Peripheral_Listener_onDescriptorRead_4( _ __env: UnsafeMutablePointer<JNIEnv?>, _ __this: jobject?, _ __swiftObject: jlong, _ gatt: jobject?, _ descriptor: jobject?, _ status: jint ) -> () {
    SwiftBluetoothBinding_Peripheral_ListenerLocal_.swiftObject( jniEnv: __env, javaObject: __this, swiftObject: __swiftObject ).onDescriptorRead( gatt: gatt != nil ? SwiftBluetoothBinding_Peripheral_ListenerForward( javaObject: gatt ) : nil, descriptor: descriptor != nil ? SwiftBluetoothBinding_GATTDescriptorForward( javaObject: descriptor ) : nil, status: Int(status) )
}

private typealias SwiftBluetoothBinding_Peripheral_Listener_onDescriptorWrite_5_type = @convention(c) ( _: UnsafeMutablePointer<JNIEnv?>, _: jobject?, _: jlong, _: jobject?, _: jobject?, _: jint ) -> ()

private func SwiftBluetoothBinding_Peripheral_Listener_onDescriptorWrite_5( _ __env: UnsafeMutablePointer<JNIEnv?>, _ __this: jobject?, _ __swiftObject: jlong, _ gatt: jobject?, _ descriptor: jobject?, _ status: jint ) -> () {
    SwiftBluetoothBinding_Peripheral_ListenerLocal_.swiftObject( jniEnv: __env, javaObject: __this, swiftObject: __swiftObject ).onDescriptorWrite( gatt: gatt != nil ? SwiftBluetoothBinding_Peripheral_ListenerForward( javaObject: gatt ) : nil, descriptor: descriptor != nil ? SwiftBluetoothBinding_GATTDescriptorForward( javaObject: descriptor ) : nil, status: Int(status) )
}

private typealias SwiftBluetoothBinding_Peripheral_Listener_onMtuChanged_6_type = @convention(c) ( _: UnsafeMutablePointer<JNIEnv?>, _: jobject?, _: jlong, _: jobject?, _: jint, _: jint ) -> ()

private func SwiftBluetoothBinding_Peripheral_Listener_onMtuChanged_6( _ __env: UnsafeMutablePointer<JNIEnv?>, _ __this: jobject?, _ __swiftObject: jlong, _ gatt: jobject?, _ mtu: jint, _ status: jint ) -> () {
    SwiftBluetoothBinding_Peripheral_ListenerLocal_.swiftObject( jniEnv: __env, javaObject: __this, swiftObject: __swiftObject ).onMtuChanged( gatt: gatt != nil ? SwiftBluetoothBinding_Peripheral_ListenerForward( javaObject: gatt ) : nil, mtu: Int(mtu), status: Int(status) )
}

private typealias SwiftBluetoothBinding_Peripheral_Listener_onReadRemoteRssi_7_type = @convention(c) ( _: UnsafeMutablePointer<JNIEnv?>, _: jobject?, _: jlong, _: jobject?, _: jint, _: jint ) -> ()

private func SwiftBluetoothBinding_Peripheral_Listener_onReadRemoteRssi_7( _ __env: UnsafeMutablePointer<JNIEnv?>, _ __this: jobject?, _ __swiftObject: jlong, _ gatt: jobject?, _ rssi: jint, _ status: jint ) -> () {
    SwiftBluetoothBinding_Peripheral_ListenerLocal_.swiftObject( jniEnv: __env, javaObject: __this, swiftObject: __swiftObject ).onReadRemoteRssi( gatt: gatt != nil ? SwiftBluetoothBinding_Peripheral_ListenerForward( javaObject: gatt ) : nil, rssi: Int(rssi), status: Int(status) )
}

private typealias SwiftBluetoothBinding_Peripheral_Listener_onReliableWriteCompleted_8_type = @convention(c) ( _: UnsafeMutablePointer<JNIEnv?>, _: jobject?, _: jlong, _: jobject?, _: jint ) -> ()

private func SwiftBluetoothBinding_Peripheral_Listener_onReliableWriteCompleted_8( _ __env: UnsafeMutablePointer<JNIEnv?>, _ __this: jobject?, _ __swiftObject: jlong, _ gatt: jobject?, _ status: jint ) -> () {
    SwiftBluetoothBinding_Peripheral_ListenerLocal_.swiftObject( jniEnv: __env, javaObject: __this, swiftObject: __swiftObject ).onReliableWriteCompleted( gatt: gatt != nil ? SwiftBluetoothBinding_Peripheral_ListenerForward( javaObject: gatt ) : nil, status: Int(status) )
}

private typealias SwiftBluetoothBinding_Peripheral_Listener_onServicesDiscovered_9_type = @convention(c) ( _: UnsafeMutablePointer<JNIEnv?>, _: jobject?, _: jlong, _: jobject?, _: jint ) -> ()

private func SwiftBluetoothBinding_Peripheral_Listener_onServicesDiscovered_9( _ __env: UnsafeMutablePointer<JNIEnv?>, _ __this: jobject?, _ __swiftObject: jlong, _ gatt: jobject?, _ status: jint ) -> () {
    SwiftBluetoothBinding_Peripheral_ListenerLocal_.swiftObject( jniEnv: __env, javaObject: __this, swiftObject: __swiftObject ).onServicesDiscovered( gatt: gatt != nil ? SwiftBluetoothBinding_Peripheral_ListenerForward( javaObject: gatt ) : nil, status: Int(status) )
}

fileprivate class SwiftBluetoothBinding_Peripheral_ListenerLocal_: JNILocalProxy<SwiftBluetoothBinding_Peripheral_Listener, Any> {

    fileprivate static let _proxyClass: jclass = {
        var natives = [JNINativeMethod]()

        let SwiftBluetoothBinding_Peripheral_Listener_onCharacteristicChanged_0_thunk: SwiftBluetoothBinding_Peripheral_Listener_onCharacteristicChanged_0_type = SwiftBluetoothBinding_Peripheral_Listener_onCharacteristicChanged_0
        natives.append( JNINativeMethod( name: strdup("__onCharacteristicChanged"), signature: strdup("(JLcom/johnholdsworth/swiftbindings/SwiftBluetoothBinding$Peripheral$Listener;Lcom/johnholdsworth/swiftbindings/SwiftBluetoothBinding$GATTCharacteristic;)V"), fnPtr: unsafeBitCast( SwiftBluetoothBinding_Peripheral_Listener_onCharacteristicChanged_0_thunk, to: UnsafeMutableRawPointer.self ) ) )

        let SwiftBluetoothBinding_Peripheral_Listener_onCharacteristicRead_1_thunk: SwiftBluetoothBinding_Peripheral_Listener_onCharacteristicRead_1_type = SwiftBluetoothBinding_Peripheral_Listener_onCharacteristicRead_1
        natives.append( JNINativeMethod( name: strdup("__onCharacteristicRead"), signature: strdup("(JLcom/johnholdsworth/swiftbindings/SwiftBluetoothBinding$Peripheral$Listener;Lcom/johnholdsworth/swiftbindings/SwiftBluetoothBinding$GATTCharacteristic;I)V"), fnPtr: unsafeBitCast( SwiftBluetoothBinding_Peripheral_Listener_onCharacteristicRead_1_thunk, to: UnsafeMutableRawPointer.self ) ) )

        let SwiftBluetoothBinding_Peripheral_Listener_onCharacteristicWrite_2_thunk: SwiftBluetoothBinding_Peripheral_Listener_onCharacteristicWrite_2_type = SwiftBluetoothBinding_Peripheral_Listener_onCharacteristicWrite_2
        natives.append( JNINativeMethod( name: strdup("__onCharacteristicWrite"), signature: strdup("(JLcom/johnholdsworth/swiftbindings/SwiftBluetoothBinding$Peripheral$Listener;Lcom/johnholdsworth/swiftbindings/SwiftBluetoothBinding$GATTCharacteristic;I)V"), fnPtr: unsafeBitCast( SwiftBluetoothBinding_Peripheral_Listener_onCharacteristicWrite_2_thunk, to: UnsafeMutableRawPointer.self ) ) )

        let SwiftBluetoothBinding_Peripheral_Listener_onConnectionStateChange_3_thunk: SwiftBluetoothBinding_Peripheral_Listener_onConnectionStateChange_3_type = SwiftBluetoothBinding_Peripheral_Listener_onConnectionStateChange_3
        natives.append( JNINativeMethod( name: strdup("__onConnectionStateChange"), signature: strdup("(JLcom/johnholdsworth/swiftbindings/SwiftBluetoothBinding$Peripheral$Listener;II)V"), fnPtr: unsafeBitCast( SwiftBluetoothBinding_Peripheral_Listener_onConnectionStateChange_3_thunk, to: UnsafeMutableRawPointer.self ) ) )

        let SwiftBluetoothBinding_Peripheral_Listener_onDescriptorRead_4_thunk: SwiftBluetoothBinding_Peripheral_Listener_onDescriptorRead_4_type = SwiftBluetoothBinding_Peripheral_Listener_onDescriptorRead_4
        natives.append( JNINativeMethod( name: strdup("__onDescriptorRead"), signature: strdup("(JLcom/johnholdsworth/swiftbindings/SwiftBluetoothBinding$Peripheral$Listener;Lcom/johnholdsworth/swiftbindings/SwiftBluetoothBinding$GATTDescriptor;I)V"), fnPtr: unsafeBitCast( SwiftBluetoothBinding_Peripheral_Listener_onDescriptorRead_4_thunk, to: UnsafeMutableRawPointer.self ) ) )

        let SwiftBluetoothBinding_Peripheral_Listener_onDescriptorWrite_5_thunk: SwiftBluetoothBinding_Peripheral_Listener_onDescriptorWrite_5_type = SwiftBluetoothBinding_Peripheral_Listener_onDescriptorWrite_5
        natives.append( JNINativeMethod( name: strdup("__onDescriptorWrite"), signature: strdup("(JLcom/johnholdsworth/swiftbindings/SwiftBluetoothBinding$Peripheral$Listener;Lcom/johnholdsworth/swiftbindings/SwiftBluetoothBinding$GATTDescriptor;I)V"), fnPtr: unsafeBitCast( SwiftBluetoothBinding_Peripheral_Listener_onDescriptorWrite_5_thunk, to: UnsafeMutableRawPointer.self ) ) )

        let SwiftBluetoothBinding_Peripheral_Listener_onMtuChanged_6_thunk: SwiftBluetoothBinding_Peripheral_Listener_onMtuChanged_6_type = SwiftBluetoothBinding_Peripheral_Listener_onMtuChanged_6
        natives.append( JNINativeMethod( name: strdup("__onMtuChanged"), signature: strdup("(JLcom/johnholdsworth/swiftbindings/SwiftBluetoothBinding$Peripheral$Listener;II)V"), fnPtr: unsafeBitCast( SwiftBluetoothBinding_Peripheral_Listener_onMtuChanged_6_thunk, to: UnsafeMutableRawPointer.self ) ) )

        let SwiftBluetoothBinding_Peripheral_Listener_onReadRemoteRssi_7_thunk: SwiftBluetoothBinding_Peripheral_Listener_onReadRemoteRssi_7_type = SwiftBluetoothBinding_Peripheral_Listener_onReadRemoteRssi_7
        natives.append( JNINativeMethod( name: strdup("__onReadRemoteRssi"), signature: strdup("(JLcom/johnholdsworth/swiftbindings/SwiftBluetoothBinding$Peripheral$Listener;II)V"), fnPtr: unsafeBitCast( SwiftBluetoothBinding_Peripheral_Listener_onReadRemoteRssi_7_thunk, to: UnsafeMutableRawPointer.self ) ) )

        let SwiftBluetoothBinding_Peripheral_Listener_onReliableWriteCompleted_8_thunk: SwiftBluetoothBinding_Peripheral_Listener_onReliableWriteCompleted_8_type = SwiftBluetoothBinding_Peripheral_Listener_onReliableWriteCompleted_8
        natives.append( JNINativeMethod( name: strdup("__onReliableWriteCompleted"), signature: strdup("(JLcom/johnholdsworth/swiftbindings/SwiftBluetoothBinding$Peripheral$Listener;I)V"), fnPtr: unsafeBitCast( SwiftBluetoothBinding_Peripheral_Listener_onReliableWriteCompleted_8_thunk, to: UnsafeMutableRawPointer.self ) ) )

        let SwiftBluetoothBinding_Peripheral_Listener_onServicesDiscovered_9_thunk: SwiftBluetoothBinding_Peripheral_Listener_onServicesDiscovered_9_type = SwiftBluetoothBinding_Peripheral_Listener_onServicesDiscovered_9
        natives.append( JNINativeMethod( name: strdup("__onServicesDiscovered"), signature: strdup("(JLcom/johnholdsworth/swiftbindings/SwiftBluetoothBinding$Peripheral$Listener;I)V"), fnPtr: unsafeBitCast( SwiftBluetoothBinding_Peripheral_Listener_onServicesDiscovered_9_thunk, to: UnsafeMutableRawPointer.self ) ) )

        natives.append( JNINativeMethod( name: strdup("__finalize"), signature: strdup("(J)V"), fnPtr: unsafeBitCast( JNIReleasableProxy__finalize_thunk, to: UnsafeMutableRawPointer.self ) ) )

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

    override open class func proxyClassName() -> String { return "org/swiftjava/com_johnholdsworth/SwiftBluetoothBinding_Peripheral_ListenerProxy" }
    override open class func proxyClass() -> jclass? { return _proxyClass }

}

extension SwiftBluetoothBinding_Peripheral_Listener {

    public func localJavaObject( _ locals: UnsafeMutablePointer<[jobject]> ) -> jobject? {
        return SwiftBluetoothBinding_Peripheral_ListenerLocal_( owned: self, proto: self ).localJavaObject( locals )
    }

}

open class SwiftBluetoothBinding_Peripheral_ListenerBase: SwiftBluetoothBinding_Peripheral_Listener {

    public init() {}

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onCharacteristicChanged(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener,com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$GATTCharacteristic)

    open func onCharacteristicChanged( gatt: SwiftBluetoothBinding_Peripheral_Listener?, characteristic: SwiftBluetoothBinding_GATTCharacteristic? ) /**/ {
    }


    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onCharacteristicRead(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener,com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$GATTCharacteristic,int)

    open func onCharacteristicRead( gatt: SwiftBluetoothBinding_Peripheral_Listener?, characteristic: SwiftBluetoothBinding_GATTCharacteristic?, status: Int ) /**/ {
    }


    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onCharacteristicWrite(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener,com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$GATTCharacteristic,int)

    open func onCharacteristicWrite( gatt: SwiftBluetoothBinding_Peripheral_Listener?, characteristic: SwiftBluetoothBinding_GATTCharacteristic?, status: Int ) /**/ {
    }


    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onConnectionStateChange(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener,int,int)

    open func onConnectionStateChange( gatt: SwiftBluetoothBinding_Peripheral_Listener?, status: Int, newState: Int ) /**/ {
    }


    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onDescriptorRead(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener,com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$GATTDescriptor,int)

    open func onDescriptorRead( gatt: SwiftBluetoothBinding_Peripheral_Listener?, descriptor: SwiftBluetoothBinding_GATTDescriptor?, status: Int ) /**/ {
    }


    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onDescriptorWrite(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener,com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$GATTDescriptor,int)

    open func onDescriptorWrite( gatt: SwiftBluetoothBinding_Peripheral_Listener?, descriptor: SwiftBluetoothBinding_GATTDescriptor?, status: Int ) /**/ {
    }


    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onMtuChanged(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener,int,int)

    open func onMtuChanged( gatt: SwiftBluetoothBinding_Peripheral_Listener?, mtu: Int, status: Int ) /**/ {
    }


    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onReadRemoteRssi(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener,int,int)

    open func onReadRemoteRssi( gatt: SwiftBluetoothBinding_Peripheral_Listener?, rssi: Int, status: Int ) /**/ {
    }


    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onReliableWriteCompleted(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener,int)

    open func onReliableWriteCompleted( gatt: SwiftBluetoothBinding_Peripheral_Listener?, status: Int ) /**/ {
    }


    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onServicesDiscovered(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener,int)

    open func onServicesDiscovered( gatt: SwiftBluetoothBinding_Peripheral_Listener?, status: Int ) /**/ {
    }


}