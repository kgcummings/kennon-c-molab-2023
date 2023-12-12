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
        NavigationStack(path: $navPath) {
            VStack{
                VStack{
                    
                   // Button("Jump to random") {
                     //   navPath.append(1)
                 //   }
                    Text("What's the best way to wind down after a busy day?")
                        .italic()
                        .frame(width:250)
                        .multilineTextAlignment(.center)
              
                        Button("Cozy up by a fire!",
                               action:
                                {
                            seasonScores.fallAnswer()
                            navPath.append(1)
                        })
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
                
                    
                    VStack {
                        Button(action: seasonScores.winterAnswer, label: {
                            NavigationLink(destination: ViewTwo()) {
                                Text("Next Question")
                            }
                        })
                        
                    }.navigationBarBackButtonHidden(true)
                    
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
