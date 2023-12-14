//
//  ContentView.swift
//  Week 14 Final
//
//  Created by Kennon Cummings on 12/13/23.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var seasonScores : SeasonScores
    
   // @State private var naviPath = NavigationPath()
    
    var body: some View {
        TabView{
            NavigationStack{
                Begin()
                   
            }
//                Q1()
//                    .tabItem {
//                        Label("First", systemImage: "circle.fill")
//                    }
//                Q2()
//                    .tabItem {
//                        Label("Second", systemImage: "circle.fill")
//                    }
//            Q3()
//                .tabItem {
//                    Label("Third", systemImage:"circle.fill")
//                }
//            
//            Q4()
//                .tabItem {
//                    Label("Fourth", systemImage:"circle.fill")
//                }
//                
//            Results()
//                .tabItem { Label("Results", systemImage:"sun") }
        }.background(.white)
    }
}

#Preview {
    ContentView()
        .environmentObject(SeasonScores())
}
