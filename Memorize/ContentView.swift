//
//  ContentView.swift
//  Memorize
//
//  Created by Mahsa Fateh on 8/25/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            let emojies : Array<String> = ["🎃", "👻", "☠️", "🕸️", "😈", "🕷️" ]
            
            ForEach(emojies.indices , id: \.self) { index in
                CardView(content: emojies[index] )
            }
    }
        .foregroundStyle(.orange)
        .padding()
    }
}

#Preview {
    ContentView()
}
