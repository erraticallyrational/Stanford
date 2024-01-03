//
//  ContentView.swift
//  Stanford
//
//  Created by Shaquil Campbell on 1/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
       CardView(isFaceUp: true)
            CardView(isFaceUp: true)
            CardView(isFaceUp: true)
            CardView(isFaceUp: true)
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
   @State  var isFaceUp = false
    
    var body: some View {
        ZStack {
            let base =  RoundedRectangle(cornerRadius:12)
            if isFaceUp{
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            }else {
                base.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}
