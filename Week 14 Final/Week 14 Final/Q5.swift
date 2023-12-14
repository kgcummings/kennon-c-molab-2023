//
//  ViewThree.swift
//  WEEK 9 FINALPROJ
//
//  Created by Kennon Cummings on 12/7/23.
//

import SwiftUI

struct Q5: View {
    @EnvironmentObject var seasonScores : SeasonScores
    @State private var navPath = NavigationPath()
    
    var buttonColors: [Color] = [.green,.orange, .pink, .blue]
    
    var body: some View {
        NavigationStack {
            VStack{
                VStack{
                //    Image(systemName: "leaf.fill")
                    Text("Pick your favorite planet!")
                        .font(.custom("Preahvihear-Regular", size: 18))
                        .frame(width:200)
                        .multilineTextAlignment(.center)
                    
                    Button("Saturn", action: seasonScores.fallAnswer)
                        .buttonStyle(.borderedProminent)
                        .tint(buttonColors.randomElement())
                    
                    
                    
                    Button("Uranus", action: seasonScores.winterAnswer)
                        .buttonStyle(.borderedProminent)
                        .tint(buttonColors.randomElement())
                    
                    
                    
                    Button("Earth", action: seasonScores.springAnswer)
                        .buttonStyle(.borderedProminent)
                        .tint(buttonColors.randomElement())
                    
                    
                    
                    
                    Button("Jupiter", action: seasonScores.summerAnswer)
                        .buttonStyle(.borderedProminent)
                        .tint(buttonColors.randomElement())
                    
                    NavigationLink(destination: Results()) {
                                        Text("Get your results!")
                                    }
                    .padding(7)
                    .background(Color("tempAc"))
                    .foregroundStyle(.white)
                    .cornerRadius(60)
                    
                    
                }.padding(30)
                    .background(Color(.white) .opacity(0.5))
                    .cornerRadius(15)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            .background(.linearGradient(colors: [.purple,.green,.blue, .mint], startPoint: .top, endPoint: .bottom))
            
        }.navigationViewStyle(StackNavigationViewStyle())
            .ignoresSafeArea()
        
        
        
    }
}

#Preview {
    Q5()
        .environmentObject(SeasonScores())
}
