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
                    .italic()
                    .frame(width:250)
                    .multilineTextAlignment(.center)
                
                Button("Drink a hot beverage.", action: seasonScores.winterAnswer)
                    .buttonStyle(.borderedProminent)
                    .tint(buttonColors.randomElement())
               
            }
        }
    }
}

#Preview {
    Q2()
        .environmentObject(SeasonScores())
}
