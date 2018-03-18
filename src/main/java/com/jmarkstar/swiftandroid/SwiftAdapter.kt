package com.jmarkstar.swiftandroid

import android.content.Context
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.BaseAdapter
import android.widget.TextView
import com.johnholdsworth.swiftbindings.SwiftAdapterBinding

/**
 * Created by coleman on 3/18/18.
 */

internal class SwiftAdapter : BaseAdapter(), SwiftAdapterBinding.Responder {

    var listener: SwiftAdapterBinding.Listener? = null

    private var inflater: LayoutInflater? = null

    /** Implemented in src/main/swift/Sources/main.swift  */
    private external fun bind(self: SwiftAdapterBinding.Responder): SwiftAdapterBinding.Listener

    // adapter

    override fun getCount(): Int {

        //Log.w("SwiftAdapter", "getCount: ");

        return listener?.numberOfRows() ?: 0
    }

    override fun getItem(position: Int): Any? {
        return null
    }

    override fun getItemId(position: Int): Long {
        return position.toLong()
    }

    override fun getView(position: Int, convertView: View?, parent: ViewGroup): View {

        //Log.w("SwiftAdapter", "getView: ");

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
        listener!!.configureCell(cell, position)

        return view
    }

    internal inner class CustomCell : SwiftAdapterBinding.Cell {

        var textView: TextView? = null

        fun setTitle(title: String) {

            //Log.w("CustomCell", "setTitle: ");

            textView!!.text = title
        }
    }

    companion object {

        fun newInstance(context: Context): SwiftAdapter {

            //Log.w("SwiftAdapter", "newInstance: ");

            val newInstance = SwiftAdapter()
            newInstance.listener = newInstance.bind(newInstance)
            newInstance.inflater = context.getSystemService(Context.LAYOUT_INFLATER_SERVICE) as LayoutInflater
            return newInstance
        }
    }
}