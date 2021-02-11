//
//  ContentView.swift
//  SwiftUITest
//
//  Created by Ezequiel Barreto on 09/02/21.
//

import SwiftUI

struct ContentView: View {
    let hikes = Hike.all()
    
    var body: some View {
        Text("")
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
