//
//  ContentView.swift
//  WEEK 9 FINALPROJ
//
//  Created by Kennon Cummings on 11/7/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            VStack(spacing: 0){
              //  Color.pink
                LinearGradient(stops: [
                    Gradient.Stop(color:.white, location: 0.20),
                    Gradient.Stop(color: .blue, location: 0.75)], startPoint: .top, endPoint: .bottom)
               // Color.yellow
            }
               // .frame(width:200, height:300)
            Text("Bleh")
                .foregroundStyle(.secondary)
                .padding(100)
                .background(.ultraThinMaterial)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
