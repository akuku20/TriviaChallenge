//
//  ContentView.swift
//  TriviaChallenge
//
//  Created by Alicja on 16/03/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var triviaManager = TriviaManager()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
                VStack(spacing: 30) {
                    Text("Trivia Challenge")
                        .blueTitle()
                    
                    Text("Are you ready to test yourself?")
                        .font(.title3)
                        .foregroundColor(Color("AccentColor"))
                }
                
                NavigationLink{
                    TriviaView()
                        .environmentObject(triviaManager)
                } label: {
                    PrimaryButton(text: "Let's go!")
                }
            }
            .blueBackground()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
