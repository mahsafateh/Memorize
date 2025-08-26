//
//  ContentView.swift
//  Memorize
//
//  Created by Mahsa Fateh on 8/25/25.
//

import SwiftUI

struct ContentView: View {
    let emojies : Array<String> = ["🎃", "👻", "☠️", "🕸️", "🕷️", "🧙🏻‍♀️", "🧟‍♂️", "👽", "🍭", "⚰️" ]
    
    @State var cardCount = 4

    var body: some View {
        VStack{
            ScrollView{
                cards
            }
            Spacer()
            cardCountAdjusters
        }
        .padding()
    }
    
    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))]){
            ForEach(0..<cardCount , id: \.self) { index in
                CardView(content: emojies[index])
                    .aspectRatio(2/3 , contentMode: .fit)
            }
        }
        .foregroundStyle(.orange)
    }
    
    var cardRemover: some View {
        countAdjuster(by: -1, symbol: "rectangle.stack.badge.minus.fill")
    }
    
    var cardAdder: some View {
        countAdjuster(by: +1, symbol: "rectangle.stack.badge.plus.fill")
    }
    
    func countAdjuster(by offset: Int, symbol: String) -> some View {
        Button(action: {
            cardCount += offset
        }, label: {
            Image(systemName: symbol)
        })
        .disabled(cardCount + offset < 1 || cardCount + offset > emojies.count)
        .imageScale(.large)
        .font(.largeTitle)
    }
    
    var cardCountAdjusters: some View {
        HStack{
            cardRemover
            Spacer()
            cardAdder
            
        }.padding(5)
    }
}

#Preview {
    ContentView()
}
