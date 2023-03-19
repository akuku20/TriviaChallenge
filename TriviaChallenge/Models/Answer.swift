//
//  Answer.swift
//  TriviaChallenge
//
//  Created by Alicja on 16/03/2023.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID()
    var text: AttributedString
    var isCorrect: Bool
}
