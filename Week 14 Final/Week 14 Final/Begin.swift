//
//  homeView.swift
//  WEEK 9 FINALPROJ
//
//  Created by Kennon Cummings on 12/7/23.
//

import SwiftUI

struct Begin: View {
    @State private var naviPath = NavigationPath()
    
    var body: some View {
        NavigationView{
            VStack(spacing: 40){
                VStack(spacing:20){
                    Text("Welcome to the seasons personality quiz!!")
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                }
                
                NavigationLink {
                    Q1()
                } label: {
                    Text("Press this!")
                        .padding()
                          .background(.red)
                          .foregroundStyle(.white)
                          .cornerRadius(60)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            .background(.linearGradient(colors: [.blue,.green,.yellow, .red], startPoint: .top, endPoint: .bottom))
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    Begin()
        .environmentObject(SeasonScores())
}
