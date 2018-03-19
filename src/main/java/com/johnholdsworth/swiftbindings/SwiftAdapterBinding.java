package com.johnholdsworth.swiftbindings;

/**
 * Created by coleman on 3/17/18.
 */

public interface SwiftAdapterBinding {

    // Messages from JavaActivity to Swift
    public interface Listener {

        public int numberOfRows();

        public void configureCell(Cell cell, int row);
    }

    public interface Responder {


    }

    public interface Cell {

        public void setTitle(String title);
    }
}