//
//  Odds.swift
//  Bookmaker
//
//  Created by Katerina Ivanova on 16.01.2024.
//
import Foundation

struct Coefficients: Identifiable {
    let id = UUID()
    let status: String
    let coefficient: Double
    let numbOfBets: Int
}
