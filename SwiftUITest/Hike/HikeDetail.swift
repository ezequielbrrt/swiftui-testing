//
//  HikeDetail.swift
//  SwiftUITest
//
//  Created by Ezequiel Barreto on 11/02/21.
//

import SwiftUI

struct HikeDetail: View {
    let hike: Hike
    
    var body: some View {
        VStack {
            Image(hike.imateURL)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text(hike.name)
            Text(String(format: "%.2f", hike.miles))
        }
    }
}
