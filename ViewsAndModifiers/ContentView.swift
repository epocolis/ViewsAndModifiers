//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Leotis buchanan on 2021-04-22.
//
/*
 SwiftUI gives us a range of built-in modifiers, such as font(), background(), and
 clipShape(). However, it’s also possible to create custom modifiers that do
 something specific.
 
*/

import SwiftUI

struct Title: ViewModifier {
    func body (content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

extension View {
    func titleStyle() -> some View {
        self.modifier(Title())
    }
}

struct Watermark: ViewModifier {
    var text: String
    
    func body(content:Content) -> some View {
        ZStack(){
            content
            Text(text)
                .font(.largeTitle)
                .padding()
                .foregroundColor(.white)
                .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .font(.caption)
        }
    }
}

extension View {
    func waterMarked(with text: String) -> some View {
        self.modifier(Watermark(text:text))
    }
}



struct ContentView: View {
    /*
     We can then use that CapsuleText view inside our original view, like this:
     */
    
    
    
    var body: some View {
        VStack {
            Color.blue
                .frame(width:300, height: 300)
                .waterMarked(with: "Hacking with Swift")
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
