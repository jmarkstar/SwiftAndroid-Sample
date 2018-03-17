package com.johnholdsworth.swiftbindings;

/**
 * Created by jmarkstar on 3/16/18.
 */

public interface SwiftMathBinding {

    // Messages from JavaActivity to Swift
    public interface Listener {
        public void processSum( int num1, int num2 );
    }

    // Messages from Swift back to Activity
    public interface Responder {
        public void processedSum(int result);
    }
}
