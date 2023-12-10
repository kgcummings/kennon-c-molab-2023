//
//  homeView.swift
//  WEEK 9 FINALPROJ
//
//  Created by Kennon Cummings on 12/7/23.
//

import SwiftUI

struct homeView: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 40){
                VStack(spacing:20){
                    Text("Welcome to the seasons personality quiz!!")
                }
                
                NavigationLink {
                    ViewOne()
                } label: {
                    Text("Press this!")
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            .background(.linearGradient(colors: [.blue,.green,.yellow, .red], startPoint: .top, endPoint: .bottom))
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    homeView()
}
