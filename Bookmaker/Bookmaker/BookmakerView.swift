//
//  BookmakerView.swift
//  Bookmaker
//
//  Created by Katerina Ivanova on 16.01.2024.
//

import SwiftUI

struct BookmakerView: View {
    
    @ObservedObject var model: BookmakerViewModel
    
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

#Preview {
    BookmakerView(model: BookmakerViewModel())
}
