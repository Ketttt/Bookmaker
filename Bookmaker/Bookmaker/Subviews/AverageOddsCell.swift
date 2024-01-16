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
        
        VStack(alignment: .leading) {
            Text(Constants.Titles.averageOdds)
                .bold()
                .font(.system(size: 16))
                .padding(.bottom, 12)
            
            ForEach(model.odds) { odd in
                HStack {
                    ZStack(alignment: .leading) {
                        Rectangle()
                            .fill(bgColor)
                            .frame(maxWidth: .infinity)
                            .frame(height: 10)
                        
                        
                        Rectangle()
                            .fill(model.color(for: odd.status))
                            .frame(maxWidth: odd.odd * 100)
                            .frame(height: 10)
                    }
                    
                    HStack {
                        Text(odd.status)
                            .font(.system(size: 10))
                            .foregroundStyle(Color("refundColor"))
                            .frame(minWidth: 60, alignment: .leading)
                        Text("\(odd.odd.debugDescription)")
                            .bold()
                            .font(.system(size: 12))
                            .frame(alignment: .trailing)
                    }
                }
            }
        }
        .padding(.horizontal, 8)
        .padding(.vertical, 16)
    }
}
