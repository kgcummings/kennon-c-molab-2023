//
//  ViewThree.swift
//  WEEK 9 FINALPROJ
//
//  Created by Kennon Cummings on 12/7/23.
//

import SwiftUI

struct Q4: View {
    @EnvironmentObject var seasonScores : SeasonScores
    @State private var navPath = NavigationPath()
    
    var buttonColors: [Color] = [.green,.orange, .pink, .blue]
    
    var body: some View {
        NavigationStack {
            VStack{
                VStack{
                //    Image(systemName: "leaf.fill")
                    Text("What makes you feel safe?")
                        .font(.custom("Preahvihear-Regular", size: 18))
                        .frame(width:200)
                        .multilineTextAlignment(.center)
                    
                    Button("Company.", action: seasonScores.summerAnswer)
                        .buttonStyle(.borderedProminent)
                        .tint(buttonColors.randomElement())
                    
                    
                    
                    Button("A Nostalgic smell.", action: seasonScores.fallAnswer)
                        .buttonStyle(.borderedProminent)
                        .tint(buttonColors.randomElement())
                    
                    
                    
                    Button("Silence.", action: seasonScores.winterAnswer)
                        .buttonStyle(.borderedProminent)
                        .tint(buttonColors.randomElement())
                    
                    
                    
                    
                    Button("A familiar song.", action: seasonScores.springAnswer)
                        .buttonStyle(.borderedProminent)
                        .tint(buttonColors.randomElement())
                    
                    NavigationLink(destination: Q5()) {
                                        Text("Next Question!")
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
            .background(.linearGradient(colors: [.blue,.yellow,.red, .white], startPoint: .top, endPoint: .bottom))
            
        }.navigationViewStyle(StackNavigationViewStyle())
            .ignoresSafeArea()
        
        
        
    }
}

#Preview {
    Q4()
        .environmentObject(SeasonScores())
}
