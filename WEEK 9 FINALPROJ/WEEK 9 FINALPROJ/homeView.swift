//
//  homeView.swift
//  WEEK 9 FINALPROJ
//
//  Created by Kennon Cummings on 12/7/23.
//

import SwiftUI

struct homeView: View {
    var body: some View {
        VStack{
            Spacer()
            Text("Welcome to the seasons personality quiz!!")
            Divider()
            Spacer()
        }.padding(30)
        .cornerRadius(15)
        .background(.linearGradient(colors: [.blue,.green,.yellow, .red], startPoint: .top, endPoint: .bottom))
    }
}

#Preview {
    homeView()
}
