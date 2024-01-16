//
//  ContentViewModel.swift
//  Bookmaker
//
//  Created by Katerina Ivanova on 16.01.2024.
//

import SwiftUI

final class ContentViewModel: ObservableObject {
    
    let odds: [Odds] = [
        Odds(status: "Выигрыш", odd: 1.94, numbOfBets: 16),
        Odds(status: "Проигрыш", odd: 2.17, numbOfBets: 11),
        Odds(status: "Возврат", odd: 1.26, numbOfBets: 5)
    ]
    
    
    func general() -> Int {
        var general = 0
        for coeff in odds {
            let a = coeff.numbOfBets
            general += a
        }
        return general
    }
    
    func per(numbOfBets: Int) -> Int {
        return numbOfBets * 100 / general()
    }
    
    
    
    func color(for status: String) -> Color {
        switch status {
        case "Выигрыш": return Color(Constants.Colors.winColor)
        case "Проигрыш": return Color(Constants.Colors.lossColor)
        case "Возврат": return Color(Constants.Colors.refundColor)
        default: return .white
        }
    }

}
