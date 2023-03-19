//
//  Extensions.swift
//  TriviaChallenge
//
//  Created by Alicja on 16/03/2023.
//

import Foundation
import SwiftUI

extension Text {
    func blueTitle() -> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color("AccentColor"))
            
    }
}

extension View {
    func blueBackground() -> some View {
        self.frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            .background(Color("Background"))

    }
}
