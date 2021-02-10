//
//  LoseModalViewModel.swift
//  DoMemory
//
//  Created by Ezequiel Barreto on 05/11/20.
//

import SwiftUI

protocol LoseModalViewModelListener {
    func tapOnTryAgain()
}

struct LoseModalViewModel {
    var listener: LoseModalViewModelListener?
}


// MARK: PUBLIC
extension LoseModalViewModel {
    func tapOnTryAgain() {
        listener?.tapOnTryAgain()
    }
}
