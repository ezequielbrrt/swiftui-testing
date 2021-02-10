//
//  HomeViewModel.swift
//  DoMemory
//
//  Created by Ezequiel Barreto on 23/09/20.
//

import SwiftUI

class HomeViewModel {
    @ObservedObject var showingView: ShowingView

    init(showingView: ShowingView) {
        self.showingView = showingView
    }
    
    func showMenuViewWithDifficulty(difficulty: Difficulty) {
        UserManageObject().createUserSettings(withDifficulty: difficulty)
        showingView.viewId = .menuView
    }
   
}
