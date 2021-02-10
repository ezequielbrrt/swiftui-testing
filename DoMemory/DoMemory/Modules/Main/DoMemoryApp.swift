//
//  DoMemoryApp.swift
//  DoMemory
//
//  Created by Ezequiel Barreto on 23/09/20.
//

import SwiftUI

@main
struct DoMemoryApp: App {
    
    init() {
        
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView(showingView: ShowingView(showingView: .mainAppView))
        }
    }
}
