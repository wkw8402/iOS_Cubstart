//
//  quizlet_ishApp.swift
//  quizlet-ish
//
//  Created by Kun on 11/10/22.
//

import SwiftUI
import Firebase

@main
struct quizlet_ishApp: App {
    
    init() {
        FirebaseApp.configure()
        AuthenticationService.signIn()
      }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
