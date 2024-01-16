//
//  BookmakerViewModel.swift
//  Bookmaker
//
//  Created by Katerina Ivanova on 16.01.2024.
//

import SwiftUI

final class BookmakerViewModel: ObservableObject {
    
    let coefficients: [Coefficients] = [
        Coefficients(status: "Выигрыш", coefficient: 1.94, numbOfBets: 16),
        Coefficients(status: "Проигрыш", coefficient: 2.17, numbOfBets: 11),
        Coefficients(status: "Возврат", coefficient: 1.26, numbOfBets: 5)
    ]
    
    //MARK: - Config
    ///Непонятно, какой максимальный коэф, поэтому любой округляю, для корректного расчета ширины ректангла
    func maxCoeff() -> Double {
        var maxCoeff = 0.0
        for coeff in coefficients {
            if coeff.coefficient > maxCoeff {
                maxCoeff = coeff.coefficient
            }
        }
        return maxCoeff.rounded(.awayFromZero)
    }
    
    func sumOfBets() -> Int {
        var general = 0
        for coeff in coefficients {
            let numbOfBets = coeff.numbOfBets
            general += numbOfBets
        }
        return general
    }
    
    func per(numbOfBets: Int, sum: Int) -> Int {
        return numbOfBets * 100 / sum
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
