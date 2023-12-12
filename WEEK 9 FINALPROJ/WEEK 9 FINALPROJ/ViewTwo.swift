//
//  ViewTwo.swift
//  WEEK 9 FINALPROJ
//
//  Created by Kennon Cummings on 12/7/23.
//

import SwiftUI

struct ViewTwo: View {
    
@EnvironmentObject var seasonScores : SeasonScores
var buttonColors: [Color] = [.green,.orange, .pink, .blue]
    
    var body: some View {
        ZStack{
            VStack{
                Image(systemName: "moon.fill")
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
                
                VStack {
                    Button(action: {}, label: {
                        NavigationLink(destination: ViewThree()) {
                             Text("Next Question")
                         }
                    })
                }
                
            }.padding(30)
                .background(Color("BGCol") .opacity(0.5))
            .cornerRadius(15)
            
        }
        .ignoresSafeArea()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .edgesIgnoringSafeArea(.all)
        .background(.linearGradient(colors: [.pink,.blue,.mint], startPoint: .top, endPoint: .bottom))
        
    }
}
#Preview {
    ViewTwo()
        .environmentObject(SeasonScores())
}
