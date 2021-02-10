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
        List(self.hikes, id: \.name) { hike in
            HikeCell(hike: hike)
        }
    }
}


struct HikeCell: View {
    let hike: Hike
    
    var body: some View {
        HStack {
            Image(hike.imateURL)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(16)
            
            VStack(alignment: .leading) {
                Text(hike.name)
                    .font(.title)
                
                Text(String(format: "%.2f", hike.miles))
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
