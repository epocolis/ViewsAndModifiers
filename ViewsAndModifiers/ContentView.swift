//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Leotis buchanan on 2021-04-22.
//
/*
 There are lots of ways to make it easier to use complex view hierarchies in
 SwiftUI, and one option is to use properties – to create a view as a property of
 your own view, then use that property inside your layouts.

 For example, we could create two text views like this as properties, then use them
 inside a VStack:
 
*/

import SwiftUI

struct ContentView: View {
    
    // For example, we could create two text views like this as properties,
    // then use them inside a VStack:
    
    let motto1 = Text("Draco dormiens").foregroundColor(.red)
    let motto2 = Text("nunquam titillandus").foregroundColor(.blue)
    var motto3: some View { Text("Draco dormiens") }
    
    var body: some View {
        VStack {
            motto1
            motto2
            motto3
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
