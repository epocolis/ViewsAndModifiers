//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Leotis buchanan on 2021-04-22.
//
/*
 Why does SwiftUI use “some View” for its view type?
 
 Whenever we apply a modifier to a SwiftUI view, we actually create a
 new view with that change applied – we don’t just modify the
 existing view in place. If you think about it, this behavior makes
 sense – our views only hold the exact properties we give them, so if
 we set the background color or font size there is no place to store
 that data.
 
 the order of your modifiers matter
 
 
 The best way to think about it for now is to imagine that SwiftUI
 renders your view after every single modifier. So, as soon as you
 say .background(Color.red) it colors the background in red,
 regardless of what frame you give it. If you then later expand the
 frame, it won’t magically redraw the background – that was already
 applied.
 
 */

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello World")
            .padding()
            .background(Color.red)
            .padding()
            .background(Color.blue)
            .padding()
            .background(Color.green)
            .padding()
            .background(Color.yellow)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
