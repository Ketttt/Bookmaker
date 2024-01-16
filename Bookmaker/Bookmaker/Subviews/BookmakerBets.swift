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
        VStack(alignment: .leading, spacing: 12) {
            Text(Constants.Titles.bookmakerBets)
                .bold()
                .font(.system(size: 16))
                .padding(.bottom, 6)
            
            HStack(alignment: .bottom, spacing: 12) {
                Image(.logo)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 110, height: 25)
                
                Text("\(model.general()) ставки")
                    .bold()
                    .font(.system(size: 16))
                
            }
            
            HStack(spacing: 4) {
                ForEach(model.odds) { odd in
                    
                    VStack(alignment: .leading) {
                        
                        Rectangle()
                            .fill(model.color(for: odd.status))
                            .frame(height: 10)
                            .frame(width: Double(odd.numbOfBets) * containerWidth / Double(model.general()))
                        
                        HStack(alignment: .center, spacing: 4) {
                            Text("\(odd.numbOfBets)")
                                .bold()
                            Text("(\(model.per(numbOfBets: odd.numbOfBets))%)")
                                .bold()
                            
                        }
                        .font(.system(size: 12))
                    }
                }
            }
        }
        .padding(.horizontal, 8)
        .padding(.vertical, 16)
    }
}
