//
//  ViewThree.swift
//  WEEK 9 FINALPROJ
//
//  Created by Kennon Cummings on 12/7/23.
//

import SwiftUI

struct Q3: View {
    @EnvironmentObject var seasonScores : SeasonScores
    @State private var navPath = NavigationPath()
    
    var buttonColors: [Color] = [.green,.orange, .pink, .blue]
    
    var body: some View {
        NavigationStack {
            VStack{
                VStack{
                    Image(systemName: "leaf.fill")
                    Text("What's the best way to wind down after a busy day?")
                        .frame(width:200)
                        .multilineTextAlignment(.center)
                    
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
                    .background(Color(.white) .opacity(0.5))
                    .cornerRadius(15)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            .background(.linearGradient(colors: [.orange,.yellow,.green], startPoint: .top, endPoint: .bottom))
            
        }.navigationViewStyle(StackNavigationViewStyle())
            .ignoresSafeArea()
        
        
        
    }
}

#Preview {
    Q3()
        .environmentObject(SeasonScores())
}
