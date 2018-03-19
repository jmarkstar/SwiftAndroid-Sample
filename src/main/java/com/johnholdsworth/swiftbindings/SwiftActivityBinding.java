package com.johnholdsworth.swiftbindings;

/**
 * Created by coleman on 3/18/18.
 */

public interface SwiftActivityBinding {

    // Messages from Java Activity to Swift
    public interface Listener {

        public void viewDidLoad();
    }

    // Messages from Swift back to Java Activity
    public interface Responder {


    }
}
