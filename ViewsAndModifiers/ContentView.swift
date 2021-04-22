//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Leotis buchanan on 2021-04-22.
//
/*
 Conditional modifiers?
 
 It’s common to want modifiers that apply only when a certain
 condition is met, and in SwiftUI the easiest way to do that is with
 the ternary operator.

 As a reminder, to use the ternary operator you write your condition
 first, then a question mark and what should be used if the condition
 is true, then a colon followed by what should be used if the
 condition is false.

 For example, if you had a property that could be either true or
 false, you could use that to control the foreground color of a
 button like this:
 
 var body: some View {
     Button("Hello World"){
         self.useRedText.toggle()
     }
     .foregroundColor(useRedText ? .red : .blue)
 }
 
 writing it like this would not work because the type of view
 you will return is no longer certain
 
 
 var body: some View {
     if self.useRedText {
         return Text("Hello World")
     } else {
         return Text("Hello World")
             .background(Color.red)
     }
 }
 
 
 */

import SwiftUI

struct ContentView: View {
    @State private var useRedText = false
    
    var body: some View {
        Button("Hello World"){
            self.useRedText.toggle()
        }
        .foregroundColor(useRedText ? .red : .blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
