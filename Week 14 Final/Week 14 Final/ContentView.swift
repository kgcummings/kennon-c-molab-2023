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
                Q1()
                    .tabItem {
                        Label("First", systemImage: "dog")
                    }
                Q2()
                    .tabItem {
                        Label("Second", systemImage: "dog")
                    }
            Q3()
                .tabItem {
                    Label("Third", systemImage:"leaf")
                }
                
            Results()
                .tabItem { Label("Results", systemImage:"sun") }
        }.background(.white)
    }
}

#Preview {
    ContentView()
        .environmentObject(SeasonScores())
}
