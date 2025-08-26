//
//  CardView.swift
//  Memorize
//
//  Created by Mahsa Fateh on 8/26/25.
//

import SwiftUI

struct CardView: View {
    @State var isFaceUp: Bool = false
    
    var body: some View {
        
        ZStack() {
            let base = RoundedRectangle(cornerRadius: 12)
            
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 5)
                Text("👻")
                    .font(.largeTitle)
            } else {
                base.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
            print("card is tapped \(isFaceUp)")
        }
        
    }
}

#Preview {
    CardView()
}
