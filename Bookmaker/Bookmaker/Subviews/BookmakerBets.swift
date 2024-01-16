//
//  BookmakerBets.swift
//  Bookmaker
//
//  Created by Katerina Ivanova on 16.01.2024.
//

import SwiftUI

extension BookmakerView {
    @ViewBuilder
    
    func bookmakerBets() -> some View {
        
        let sum = model.sumOfBets()
        
        VStack(alignment: .leading, spacing: 12) {
            Text(Constants.Titles.bookmakerBets)
                .bold()
                .font(.system(size: 16))
                .padding(.bottom, 6)
            
            HStack(alignment: .bottom, spacing: 12) {
                Image(.logo)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 115, height: 25)
                
                Text("\(model.sumOfBets()) ставки")
                    .bold()
                    .font(.system(size: 16))
                
            }
            GeometryReader { geometry in
                HStack(alignment: .top, spacing: 2) {
                    ForEach(model.coefficients) { coefficient in
                        
                        let percent = model.per(numbOfBets: coefficient.numbOfBets, sum: sum)
                        let width = geometry.size.width * (CGFloat(percent) / 100)
                        
                        VStack(alignment: .leading) {
                            
                            Rectangle()
                                .fill(model.color(for: coefficient.status))
                                .frame(height: 10)
                                .frame(width: width)
                            
                            HStack(spacing: 4) {
                                Text("\(coefficient.numbOfBets)")
                                    .bold()
                                Text("(\(percent)%)")
                                    .bold()
                            }
                            .font(.system(size: 12))
                        }
                    }
                }
            }
            .frame(height: 32)
        }
        .padding(.horizontal, 8)
        .padding(.vertical, 16)
    }
}

#Preview {
    BookmakerView(model: BookmakerViewModel())
}
