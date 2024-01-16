//
//  BookmakerView.swift
//  Bookmaker
//
//  Created by Katerina Ivanova on 16.01.2024.
//

import SwiftUI

struct BookmakerView: View {
    
    @ObservedObject var model = ContentViewModel()
    
    let bgColor = Color(#colorLiteral(red: 0.9215685725, green: 0.9215685725, blue: 0.9215685725, alpha: 1))
    var containerWidth: CGFloat = UIScreen.main.bounds.width - 32.0 - 8.0 - 16.0
    
    var body: some View {
        VStack(spacing: 32) {
            averageOddsCell()
                .border(.black, width: 1)
            bookmakerBets()
                .border(.black, width: 1)
        }
        .padding(.all, 16)
    }
}

