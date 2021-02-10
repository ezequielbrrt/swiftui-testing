//
//  PauseModalViewModel.swift
//  DoMemory
//
//  Created by Ezequiel Barreto on 21/10/20.
//

import Foundation

protocol PauseModalListener {
    func tapOnResumeGame()
    func tapOnGoHome()
    func tapOnReloadGame()
}

struct PauseModalViewModel {
    var listener: PauseModalListener?
}


// MARK: PUBLIC
extension PauseModalViewModel {
    func tapOnResumeGame() {
        listener?.tapOnResumeGame()
    }
    
    func tapOnGoHome() {
        listener?.tapOnGoHome()
    }
    
    func tapOnReloadGame() {
        listener?.tapOnReloadGame()
    }
}
