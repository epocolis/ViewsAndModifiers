//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Leotis buchanan on 2021-04-22.
//
/*
 SwiftUI lets us break complex views down into smaller views without incurring much
 if any performance impact. This means that we can split up one large view into
 multiple smaller views, and SwiftUI takes care of reassembling them for us.
 
*/

import SwiftUI

struct CapsuleText: View {
    var text:String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .clipShape(Capsule())
    }
}

struct ContentView: View {
    /*
     We can then use that CapsuleText view inside our original view, like this:
     */
    
    
    
    var body: some View {
        VStack {
            CapsuleText(text: "First")
            CapsuleText(text: "Second")
            CapsuleText(text: "Third")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
