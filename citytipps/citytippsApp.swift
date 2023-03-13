//
//  citytippsApp.swift
//  citytipps
//
//  Created by Joshi Wolfram on 06.03.23.
//

import SwiftUI
import Firebase

@main
struct citytippsApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            // ContentView()
            LoginView()
        }
    }
}
