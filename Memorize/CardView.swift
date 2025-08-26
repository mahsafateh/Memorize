//
//  CardView.swift
//  Memorize
//
//  Created by Mahsa Fateh on 8/26/25.
//

import SwiftUI

struct CardView: View {
    var isFaceUp: Bool = false

    var body: some View {
        if isFaceUp {
            ZStack() {
                RoundedRectangle(cornerRadius: 12).foregroundStyle(.white)
                RoundedRectangle(cornerRadius: 12).strokeBorder(lineWidth: 5)
                Text("👻")
                    .font(.largeTitle)
            }
            .foregroundStyle(.orange)
        } else {
            RoundedRectangle(cornerRadius: 12)
                .foregroundStyle(.orange)
        
        }
        
    }
}

#Preview {
    CardView()
}
