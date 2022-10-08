//
//  ContentView.swift
//  Demo2
//
//  Created by Paul Woo on 06/10/22.
//

import SwiftUI

struct ContentView: View {
    @State var score: Int = 0
    var body: some View {
        Text("Roll Dice View")
            .tabItem {
                Label("Roll", systemImage: "dice.fill")
            }
        
        scoreView(score: score)
            .tabItem {
                Label("Score", systemImage: "number.square.fill")
            }
    }
}

struct rollDiceView: View {
    func rollDice() -> Int {
        return Int.random(in: 1...6)
    }
    @Binding var score: Int
    @State var rolledDice: Bool = false
    @State var value: Int = 0
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: rollOutcomeView(outcome: value), isActive: $rolledDice){EmptyView()}
            }
            Button {
                value = rollDice()
                score += value
                rolledDice = true
            } label: {
                Text("Roll me!")
                Image(systemImage: "dice")
            }
        }
        .navigationTitle("Dice Roller")
    }
}

struct rollOutcomeView: View {
    var outcome: Int
    var body: some View {
        
    }
}

struct scoreView: View {
    var score: Int
    var body: some View {
        Text("Your socre is \(score)")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
