//
//  QuestionView.swift
//  TriviaChallenge
//
//  Created by Alicja on 16/03/2023.
//

import SwiftUI

struct QuestionView: View {
    var body: some View {
        VStack(spacing: 40) {
            HStack(spacing: 10) {
                Text("Trivia Game")
                    .blueTitle()
                Spacer()
                
                Text("1 out of 10")
                    .foregroundColor(Color("AccentColor"))
                    .fontWeight(.heavy)
            }
            
            ProgressBar(progress: 40)
            
            VStack(alignment: .leading, spacing: 40) {
                Text("What word represents the letter &#039;T&#039; in the NATO phonetic alphabet?")
                    .font(.system(size: 20))
                    .bold()
                
                AnswerRow(answer: Answer(text: "Tango", isCorrect: true))
                
                AnswerRow(answer: Answer(text: "Texas", isCorrect: false))
            }
            
            PrimaryButton(text: "Next")
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Background"))
        .navigationBarHidden(true)
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}
