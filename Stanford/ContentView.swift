//
//  ContentView.swift
//  Stanford
//
//  Created by Shaquil Campbell on 1/2/24.
//

import SwiftUI

struct ContentView: View {
    let emojis: [String] = ["👻","🎃","🕸️","👹"]
    
    var body: some View {
        HStack{
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
            }
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    let content: String
   @State  var isFaceUp = true
    var body: some View {
        ZStack {
            let base =  RoundedRectangle(cornerRadius:12)
            if isFaceUp{
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
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
