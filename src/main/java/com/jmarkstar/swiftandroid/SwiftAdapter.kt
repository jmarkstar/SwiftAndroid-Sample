package com.jmarkstar.swiftandroid

import android.view.View
import android.view.ViewGroup
import android.widget.BaseAdapter

/**
 * Created by coleman on 3/18/18.
 */

open class SwiftAdapter(__swiftObject: Long) : BaseAdapter() {

    val __swiftObject: Long

    init {

        this.__swiftObject = __swiftObject
    }

    //private var inflater = context.getSystemService(Context.LAYOUT_INFLATER_SERVICE) as LayoutInflater

    // adapter

    private external fun __getCount(): Int;

    override fun getCount(): Int {

        return __getCount()
    }

    override fun getItem(position: Int): Any? {

        return null
    }

    override fun getItemId(position: Int): Long {

        return position.toLong()
    }

    private external fun __getView(position: Int, convertView: View?, parent: ViewGroup): View;

    override fun getView(position: Int, convertView: View?, parent: ViewGroup): View {

        return __getView(position, convertView, parent)

        /*
        val view: View
        val cell: CustomCell

        // create
        if (convertView == null) {

            view = inflater!!.inflate(R.layout.cell, parent, false)

            cell = CustomCell()
            cell.textView = view.findViewById(R.id.textView) as TextView

            view.tag = cell

        } else {

            view = convertView
            cell = view.tag as CustomCell
        }

        // configure
        listener.configureCell(cell, position)

        return view
        */
    }
}