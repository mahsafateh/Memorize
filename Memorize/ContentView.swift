//
//  ContentView.swift
//  Memorize
//
//  Created by Mahsa Fateh on 8/25/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
        CardView(isFaceUp: true)
        CardView()
        CardView()
    }
        .padding()
    }
}

#Preview {
    ContentView()
}
