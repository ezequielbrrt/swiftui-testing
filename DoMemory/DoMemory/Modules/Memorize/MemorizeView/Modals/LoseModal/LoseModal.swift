//
//  LoseModal.swift
//  DoMemory
//
//  Created by Ezequiel Barreto on 19/10/20.
//

import SwiftUI

struct LoseModal: View {
    var listener: LoseModalViewModelListener?
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0.0)
                .frame(minWidth: 0, idealWidth: .infinity, maxWidth: .infinity, minHeight: 0, idealHeight: .infinity, maxHeight: .infinity, alignment: .center)
                .foregroundColor(.gray).opacity(0.9)
            
            VStack {
                Spacer()
                Text("Sorry, you lose")
                    .foregroundColor(.secundaryColor)
                    .font(.patrickHand(size: 45))
                
                HStack {
                    Spacer()
    
                    Image("recargar")
                        .resizable()
                        .frame(width: 60, height: 60, alignment: .center)
                        .padding()
                        .gesture(TapGesture()
                                    .onEnded { _ in
                                        listener?.tapOnTryAgain()
                                    }
                                )
                    Spacer()
                }.padding()
                Spacer()
            }.padding(EdgeInsets(top: 100, leading: 20, bottom: 100, trailing: 20))
            
            
        }
        
    }
}

struct LoseModal_Previews: PreviewProvider {
    static var previews: some View {
        LoseModal()
    }
}
