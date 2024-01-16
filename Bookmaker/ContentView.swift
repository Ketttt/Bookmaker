//
//  ContentView.swift
//  Bookmaker
//
//  Created by Katerina Ivanova on 15.01.2024.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var model = BookmakerViewModel()
    
    var body: some View {
        BookmakerView(model: model)
    }
}

#Preview {
    ContentView()
}

