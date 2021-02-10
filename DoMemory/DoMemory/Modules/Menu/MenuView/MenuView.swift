//
//  MenuView.swift
//  DoMemory
//
//  Created by Ezequiel Barreto on 23/09/20.
//

import SwiftUI
import WaterfallGrid

struct MenuView: View {
    @ObservedObject var viewModel = MenuViewModel()
    @State var showNewView = false

    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [
            .foregroundColor: Color.secundaryColor.uiColor(), .font: UIFont.righteous(size: 35)]
                
        UINavigationBar.appearance().titleTextAttributes = [ .foregroundColor: Color.secundaryColor.uiColor(), .font: UIFont.righteous(size: 19)]
        
    }
    
    var body: some View {
       
        NavigationView {
            Group {
                if viewModel.isLoading {
                    LoadingView()
                } else {
                    VStack {
                        NavigationLink(
                                    destination: SettingsView(listener: viewModel),
                                    isActive: $showNewView
                                        
                                ) {
                                    EmptyView()
                                }.isDetailLink(false)
                        WaterfallGrid(viewModel.memoramaArray) { memorama in
                            NavigationLink(destination: MemorizeView(viewModel: MemorizeViewModel(memorama: memorama))
                                            .navigationBarTitle("")
                                            .navigationBarHidden(true)
                            ) {
                                MemoramaCard(memorama: memorama)
                            }.isDetailLink(true)
                            

                        }
                        
                        HStack {
                            Text(Strings.yourPoints +  ": " + viewModel.getUserPoints())
                                .foregroundColor(.primaryColor)
                                .font(.patrickHand(size: 25)).padding()
                            Spacer()
                            Image("tiendas")
                                .resizable()
                                .frame(width: 40, height: 40, alignment: .center).padding()
                        }
                        
                    }
                 
                }
            }
            .background(Color.grayBackground)
            .navigationBarItems(leading:
                                    Button(action: {
                                        self.showNewView = true
                                    }, label: { Image("configuraciones")
                                        .resizable()
                                        .frame(width: 40, height: 40, alignment: .center) }))
            .navigationBarTitle(Text("DoMemory"))
        }.onAppear {
            print("appear")
        }
    }
}

struct MemoramaCard: View {
    var memorama: Memorama
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth: 1)
                .fill(Color.blue)
            VStack(alignment: .leading) {
                Text(memorama.name).font(.patrickHand(size: 25))
                Text(memorama.name).font(.patrickHand(size: 16)).foregroundColor(.gray)
                Text(memorama.description).font(.patrickHand(size: 20)).foregroundColor(.white)
            }
        }.padding()
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
