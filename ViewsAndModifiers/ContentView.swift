//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Leotis buchanan on 2021-04-22.
//
/*
 Environment modifiers
 
 Many modifiers can be applied to containers, which allows us to apply the same
 modifier to many views at the same time.

 For example, if we have four text views in a VStack and want to give them all the
 same font modifier, we could apply the modifier to the VStack directly and have
 that change apply to all four text views:
 
 
 */

import SwiftUI

struct ContentView: View {
    @State private var useRedText = false
    // the environment is the entire VStack
    var body: some View {
        VStack {
            Text("Gryffindor")
                .font(.largeTitle) //overrides the environment modifier
            Text("Hufflepuff")
            Text("Ravenclaw")
            Text("Slytherin")
        }
        .font(.title) //environment modifier
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
