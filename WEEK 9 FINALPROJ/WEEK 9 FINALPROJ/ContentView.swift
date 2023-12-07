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

struct ContentView: View {
    
    @StateObject var seasonScores = SeasonScores()
    
    var buttonColors: [Color] = [.green,.orange, .pink, .blue]
    
    var body: some View {
        ZStack{
            VStack(spacing: 0){
                LinearGradient(stops: [
                    Gradient.Stop(color:.white, location: 0.20),
                    Gradient.Stop(color: .blue, location: 0.85)], startPoint: .top, endPoint: .bottom)
            }
            VStack{
                Image(systemName: "leaf.fill")
                        Button("Cozy up by a fire!", action: seasonScores.fallAnswer)
                            .buttonStyle(.borderedProminent)
                            .tint(buttonColors.randomElement())
                Button("Pick some flowers...", action: seasonScores.springAnswer)
                    .buttonStyle(.borderedProminent)
                    .tint(buttonColors.randomElement())
                Button("Get a tan!", action: seasonScores.summerAnswer)
                    .buttonStyle(.borderedProminent)
                    .tint(buttonColors.randomElement())
                Button("Drink a hot beverage.", action: seasonScores.winterAnswer)
                    .buttonStyle(.borderedProminent)
                    .tint(buttonColors.randomElement())
            }.padding(30)
                .background(Color("BGCol") .opacity(0.5))
            .cornerRadius(15)
            
        }
        .ignoresSafeArea()
        
    }
}

#Preview {
    ContentView()
}
