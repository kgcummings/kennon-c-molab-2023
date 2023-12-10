//
//  ContentView.swift
//  WEEK 9 FINALPROJ
//
//  Created by Kennon Cummings on 11/7/23.
//

import SwiftUI

// DEC 7 RESEARCH:
// https://www.youtube.com/watch?v=Bobaqb9Mno0&t=76s - figuring out how to transfer pages without a navigation bar
// https://www.youtube.com/watch?v=b55npVkqa5U&t=1643s - figuring out proper way to transfer between questions
// https://www.youtube.com/watch?v=_U833RUUHG4&t=152s - color asset refresher
// https://youtu.be/b55npVkqa5U?si=6vAEI5Vg5P5kSHiR - quiz

struct ContentView: View {
    
    @EnvironmentObject var seasonScores : SeasonScores
  //  @State private var navPath = NavigationPath()
    
 //  var buttonColors: [Color] = [.green,.orange, .pink, .blue]
    
    var body: some View {
        TabView{
            NavigationStack{
                homeView()
                    .navigationTitle("Home")
            }
                ViewOne()
                    .tabItem {
                        Label("First", systemImage: "dog")
                    }
                ViewTwo()
                    .tabItem {
                        Label("Second", systemImage: "dog")
                    }
            ViewThree()
                .tabItem {
                    Label("Third", systemImage:"leaf")
                }
                
        }.background(.white)
        }
    }
    
#Preview {
    ContentView()
        .environmentObject(SeasonScores())
}
