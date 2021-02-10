//
//  PauseModal.swift
//  DoMemory
//
//  Created by Ezequiel Barreto on 19/10/20.
//

import SwiftUI

struct PauseModal: View {
    
    var listener: PauseModalListener?
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0.0)
                .frame(minWidth: 0, idealWidth: .infinity, maxWidth: .infinity, minHeight: 0, idealHeight: .infinity, maxHeight: .infinity, alignment: .center)
                .foregroundColor(.gray).opacity(0.8)
            
            VStack {
                Spacer()
                Text("Pause")
                    .foregroundColor(.secundaryColor)
                    .font(.patrickHand(size: 45))
                
                Spacer()
                HStack {
                    Spacer()
                    Spacer()
                    Image("jugar")
                        .resizable()
                        .frame(width: 65, height: 65, alignment: .center)
                        .gesture(TapGesture()
                                    .onEnded { _ in
                                        listener?.tapOnResumeGame()
                                    }
                                )
                    
                    Spacer()
                    Image("recargar")
                        .resizable()
                        .frame(width: 45, height: 45, alignment: .center)
                        .padding()
                        .gesture(TapGesture()
                                    .onEnded { _ in
                                        listener?.tapOnReloadGame()
                                    }
                                )
                }.padding()
                Spacer()
            }.padding(EdgeInsets(top: 100, leading: 20, bottom: 100, trailing: 20))
            
            
        }
        
    }
}

struct PauseModal_Previews: PreviewProvider {
    static var previews: some View {
        PauseModal(listener: nil)
    }
}
