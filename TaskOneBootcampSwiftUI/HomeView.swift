//
//  ContentView.swift
//  Task0neBootcamp
//
//  Created by Andres Cordón on 25/3/24.
//

import SwiftUI

struct HomeView: View {
    @StateObject var homeViewModel: HomeViewModel = HomeViewModel()
    @State var text1: String = "Hola buenas tarde"
    @State var text2: String = "Hola buenas tardes"
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text("Welcome to the Texts Generator")
                    .font(.system(size: 48, weight: .light, design: .serif))
                    .italic()
                
                
                
                VStack(spacing: 10){
                    HStack(alignment: .top, spacing: 0) {
                        Text(text1)
                            .frame(width: geometry.size.width / 2)
                        Text(text2)
                            .frame(width: geometry.size.width / 2)
                    }
                    
                    Image("iOSLogo")
                    
                    Spacer()
                    
                }.frame(maxWidth: .infinity)
                .ignoresSafeArea()
                
            
                Button(action: {
                    switch homeViewModel.randomNumber() {
                    case 0:
                        text1 = homeViewModel.state.randomText
                    case 1:
                        text2 = homeViewModel.state.randomText
                    default:
                        break
                    }
                }) {
                    Text("Change Texts")
                }.buttonStyle(.bordered)
            }
        
        }
        
    }
}

#Preview {
    HomeView()
}
