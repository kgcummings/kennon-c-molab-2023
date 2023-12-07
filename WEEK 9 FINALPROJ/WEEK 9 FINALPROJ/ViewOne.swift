//
//  ViewOne.swift
//  WEEK 9 FINALPROJ
//
//  Created by Kennon Cummings on 12/7/23.
//

import SwiftUI

struct ViewOne: View {
    @EnvironmentObject var seasonScores : SeasonScores
    @State private var navPath = NavigationPath()
    
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
    ViewOne()
        .environmentObject(SeasonScores())
}
