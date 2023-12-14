//
//  Q2.swift
//  Week 14 Final
//
//  Created by Kennon Cummings on 12/13/23.
//

import SwiftUI

struct Q2: View {
    @EnvironmentObject var seasonScores : SeasonScores
    
    var buttonColors: [Color] = [.green,.orange, .pink, .blue]

    var body: some View {
        VStack{
            VStack{
                
                Text("What's your favorite animal?")
                    .font(.custom("Preahvihear-Regular", size: 18))
                   // .italic()
                    .frame(width:250)
                    .multilineTextAlignment(.center)
                Button("Dogs!", action: seasonScores.summerAnswer)
                    .buttonStyle(.borderedProminent)
                    .tint(buttonColors.randomElement())
                
                Button("Rabbits!", action: seasonScores.winterAnswer)
                    .buttonStyle(.borderedProminent)
                    .tint(buttonColors.randomElement())
                
                Button("Birds!", action: seasonScores.springAnswer)
                    .buttonStyle(.borderedProminent)
                    .tint(buttonColors.randomElement())
                
                Button("Cats!", action: seasonScores.fallAnswer)
                    .buttonStyle(.borderedProminent)
                    .tint(buttonColors.randomElement())
                
                
               
            }.padding(30)
                .background(Color(.white) .opacity(0.5))
            .cornerRadius(15)
        }
        .ignoresSafeArea()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .edgesIgnoringSafeArea(.all)
    .background(.linearGradient(colors: [.pink,.blue,.mint], startPoint: .top, endPoint: .bottom))
    }
}

#Preview {
    Q2()
        .environmentObject(SeasonScores())
}
