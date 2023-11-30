//
//  ContentView.swift
//  WEEK 9 FINALPROJ
//
//  Created by Kennon Cummings on 11/7/23.
//

import SwiftUI


struct ContentView: View {
    @State private var springScore = 0
    @State private var summerScore = 0
    @State private var fallScore = 0
    @State private var winterScore = 0
    
    var body: some View {
        ZStack{
            VStack(spacing: 0){
                LinearGradient(stops: [
                    Gradient.Stop(color:.white, location: 0.20),
                    Gradient.Stop(color: .blue, location: 0.75)], startPoint: .top, endPoint: .bottom)
            }
            VStack{
                Image(systemName: "leaf.fill")

                Button("Cozy up by a fire!", action: fallAnswer)
                    .buttonStyle(.borderedProminent)
                    .tint(.green)
                Button("Pick some flowers...", action: springAnswer)
                    .buttonStyle(.borderedProminent)
                    .tint(.blue)
                Button("Get a tan!", action: summerAnswer)
                    .buttonStyle(.borderedProminent)
                    .tint(.orange)
                Button("Drink a hot beverage.", action: winterAnswer)
                    .buttonStyle(.borderedProminent)
                    .tint(.pink)
            }
            
        }
        .ignoresSafeArea()
        
    }


    func springAnswer() {
           print("Spring!")
        springScore += 1
        print(springScore)
       }
    
    func summerAnswer() {
           print("Summer!")
        summerScore += 1
        print(summerScore)
       }
    
    func fallAnswer() {
           print("Fall!")
        fallScore += 1
        print(fallScore)
       }

    func winterAnswer() {
           print("Winter!")
        winterScore += 1
        print(winterScore)
       }
}

#Preview {
    ContentView()
}
