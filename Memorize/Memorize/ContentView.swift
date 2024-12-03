//
//  ContentView.swift
//  Memorize
//
//  Created by Jatin Singh on 03/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }
        
        .foregroundColor(.orange)
        .imageScale(.small)
        .padding()
    }
}

struct CardView : View {
    var isFaceUp: Bool = false
    var body: some View {
        ZStack(content: {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundStyle(.white)
                RoundedRectangle(cornerRadius: 12)
                    .stroke(style: StrokeStyle(lineWidth: 2, dash: [20, 1]))
                Text("👻")
                    .font(.largeTitle)
            }
            else {
                RoundedRectangle(cornerRadius: 12)
            }
        }
               )
    }
}





#Preview {
    ContentView()
}
