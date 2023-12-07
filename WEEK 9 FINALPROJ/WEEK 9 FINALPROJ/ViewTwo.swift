//
//  ViewTwo.swift
//  WEEK 9 FINALPROJ
//
//  Created by Kennon Cummings on 12/7/23.
//

import SwiftUI

struct ViewTwo: View {
    
@StateObject var seasonScores = SeasonScores()
    
var buttonColors: [Color] = [.green,.orange, .pink, .blue]
    
    var body: some View {
        ZStack{
            VStack(spacing: 0){
                LinearGradient(stops: [
                    Gradient.Stop(color:.white, location: 0.20),
                    Gradient.Stop(color: .green, location: 0.85)], startPoint: .top, endPoint: .bottom)
            }
            VStack{
                Image(systemName: "moon")
                Text("What animal do you like most?")
                        Button("Cats!", action: seasonScores.fallAnswer)
                            .buttonStyle(.borderedProminent)
                            .tint(buttonColors.randomElement())
                Button("Dogs!", action: seasonScores.summerAnswer)
                    .buttonStyle(.borderedProminent)
                    .tint(buttonColors.randomElement())
                Button("Rabbits!", action: seasonScores.springAnswer)
                    .buttonStyle(.borderedProminent)
                    .tint(buttonColors.randomElement())
                Button("Birds!", action: seasonScores.winterAnswer)
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
    ViewTwo()
}
