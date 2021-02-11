//
//  HikeDetail.swift
//  SwiftUITest
//
//  Created by Ezequiel Barreto on 11/02/21.
//

import SwiftUI

struct HikeDetail: View {
    let hike: Hike
    @State private var zoomed: Bool = false
    
    var body: some View {
        VStack {
            Image(hike.imageURL)
                .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                    .onTapGesture {
                        withAnimation {
                            self.zoomed.toggle()
                        }
                }
            
            Text(hike.name)
            Text(String(format: "%.2f", hike.miles))
        }.navigationBarTitle(hike.name, displayMode: .inline)
    }
}
