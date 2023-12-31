//
//  ViewOne.swift
//  WEEK 9 FINALPROJ
//
//  Created by Kennon Cummings on 12/7/23.
//

import SwiftUI

struct ViewOne: View {
    @EnvironmentObject var seasonScores : SeasonScores
    @State private var naviPath = NavigationPath()
    
    var buttonColors: [Color] = [.green,.orange, .pink, .blue]
    
    var body: some View {
        NavigationStack(path: $naviPath) {
            VStack{
                VStack{
                    
                    //    Button("Jump to random") {
                    //         navPath.append(1)
                    //    }
                    Text("What's the best way to wind down after a busy day?")
                        .italic()
                        .frame(width:250)
                        .multilineTextAlignment(.center)
                    
                    Button("Cozy up by a fire!",
                           action:
                            {
                        seasonScores.fallAnswer()
                        naviPath.append(1)
                    })
                    .buttonStyle(.borderedProminent)
                    .tint(buttonColors.randomElement())
                    
                    
                    
                    Button("Pick some flowers...",
                           action:
                            {
                        seasonScores.springAnswer()
                        naviPath.append(1)
                    })
                    .buttonStyle(.borderedProminent)
                    .tint(buttonColors.randomElement())
                    
                    
                    
                    Button("Get a tan!",
                           action:
                            {
                        seasonScores.summerAnswer()
                        naviPath.append(1)
                    })
                    .buttonStyle(.borderedProminent)
                    .tint(buttonColors.randomElement())
                    
                    
                    
                    Button("Drink a hot beverage.",
                           action:
                            {
                        seasonScores.winterAnswer()
                        naviPath.append(1)
                    })
                    .buttonStyle(.borderedProminent)
                    .tint(buttonColors.randomElement())

                }.padding(30)
                    .background(Color(.white) .opacity(0.5))
                    .cornerRadius(15)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            .background(.linearGradient(colors: [.white,.blue,.purple], startPoint: .top, endPoint: .bottom))
            .navigationDestination(for: Int.self) { i in
                ViewTwo()
            }
        }.navigationViewStyle(StackNavigationViewStyle())
            .ignoresSafeArea()

        
    }
}

#Preview {
    ViewOne()
        .environmentObject(SeasonScores())
}
