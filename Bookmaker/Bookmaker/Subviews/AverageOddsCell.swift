//
//  AverageOddsCell.swift
//  Bookmaker
//
//  Created by Katerina Ivanova on 16.01.2024.
//

import SwiftUI

extension BookmakerView {
    
    @ViewBuilder
    func averageOddsCell() -> some View {
        let maxCoeff = model.maxCoeff()
        
        VStack(alignment: .leading) {
            Text(Constants.Titles.averageOdds)
                .bold()
                .font(.system(size: 16))
                .padding(.bottom, 12)
            
            ForEach(model.coefficients) { coeff in
                HStack(spacing: 6) {
                    GeometryReader { geometry in
                        ZStack(alignment: .leading) {
                            Rectangle()
                                .fill(Color(Constants.Colors.rectBg))
                                .frame(maxWidth: geometry.size.width)
                            
                            Rectangle()
                                .fill(model.color(for: coeff.status))
                                .frame(width: geometry.size.width * coeff.coefficient / maxCoeff)
                        }
                    }
                    .frame(height: 10)
                    
                    HStack(spacing: 0) {
                        Text(coeff.status)
                            .frame(width: 60, alignment: .leading)
                            .font(.system(size: 10))
                            .foregroundStyle(Color("refundColor"))
                        
                        Text("\(coeff.coefficient.debugDescription)")
                            .bold()
                            .font(.system(size: 12))
                            .frame(width: 30, alignment: .trailing)
                    }
                }
            }
        }
        .padding(.horizontal, 8)
        .padding(.vertical, 16)
    }
}

