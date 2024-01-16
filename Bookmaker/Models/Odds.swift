//
//  Coefficient.swift
//  Bookmaker
//
//  Created by Katerina Ivanova on 16.01.2024.
//
import Foundation

struct Odds: Identifiable {
    let id = UUID()
    let status: String
    let coeff: Double
    
    let num: Int
}
