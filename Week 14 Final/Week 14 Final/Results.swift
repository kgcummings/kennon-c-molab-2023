//
//  SprResults.swift
//  WEEK 9 FINALPROJ
//
//  Created by Kennon Cummings on 12/12/23.
//

import SwiftUI

struct Results: View {
    
    
    
    
    @EnvironmentObject var seasonScores : SeasonScores
    @State private var navPath = NavigationPath()
    
    
    
    var body: some View {
        
        
        VStack {
            
            // SPRING!
            if seasonScores.springScore >= 3 {
                VStack {
                    VStack {
                        Text("Spring")
                            .frame(maxWidth: .infinity, alignment: .center)
                            .font(.custom("Sniglet-Regular", size: 35))
                        
                        Text("You're a fun-loving optimist with a passion for taking things slow. growth and change will come as long as you remember to take care of yourself.")
                            .multilineTextAlignment(.center)
                            .minimumScaleFactor(0.01)
                        // help for fitting text https://stackoverflow.com/questions/57035746/how-to-scale-text-to-fit-parent-view-with-swiftui
                    }
                        .foregroundColor(Color(red: 0.01, green: 0.45, blue: 0.16))
                        .frame(width: 307, height: 118, alignment: .topLeading)
                        .background(
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 381, height: 186)
                                .background(Color(red: 0.48, green: 0.89, blue: 0.44))
                                .cornerRadius(56)
                        )
                    
                        .padding(30)
                    
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 377, height: 325)
                        .background(
                            Image("springRes")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 397, height: 325)
                                .clipped()
                        )
                        .cornerRadius(36)
                        .padding(20)
                    
                    NavigationLink(destination: Begin()){
                        Text("Try again?")
                        
                    }.simultaneousGesture(TapGesture().onEnded{
                        seasonScores.scoresReset()
                    })
                    .padding(7)
                    .background(Color("tempAc"))
                    .foregroundStyle(.white)
                    .cornerRadius(60)
                   
                } .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .edgesIgnoringSafeArea(.all)
                    .background(Color(red: 0.85, green: 0.96, blue: 0.84))
            } else  if seasonScores.summerScore >= 3 {
                VStack {
                    VStack {
                        Text("Summer")
                            .frame(maxWidth: .infinity, alignment: .center)
                            .font(.custom("Sniglet-Regular", size: 35))
                        
                        Text("You enjoy thrills and making memories with friends! Keep achieving great things, but always remember it's okay to take it easy every now and then.")
                            .multilineTextAlignment(.center)
                            .minimumScaleFactor(0.01)
                    }
                        .foregroundColor(Color(red: 0.01, green: 0.45, blue: 0.16))
                        .frame(width: 307, height: 118, alignment: .topLeading)
                        .background(
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 381, height: 186)
                                .background(Color("SummerAc"))
                                .cornerRadius(56)
                        )
                    
                        .padding(30)
                    
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 377, height: 325)
                        .background(
                            Image("summerRes")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 397, height: 325)
                                .clipped()
                        )
                        .cornerRadius(36)
                        .padding(20)
                    
                    NavigationLink(destination: Begin()){
                        Text("Try again?")
                       
                    }.simultaneousGesture(TapGesture().onEnded{
                        seasonScores.scoresReset()
                    })
                    .padding(7)
                    .background(Color("tempAc"))
                    .foregroundStyle(.white)
                    .cornerRadius(60)
                   
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                   .edgesIgnoringSafeArea(.all)
                   .background(Color("SummerBG"))
                
            } else  if seasonScores.fallScore >= 3 {
                VStack {
                    VStack {
                        Text("Fall")
                            .frame(maxWidth: .infinity, alignment: .center)
                            .font(.custom("Sniglet-Regular", size: 35))
                        
                        Text("You're the introspective type! Rationality is always your go-to pick, but always remember to let loose sometimes and enjoy the changes of the season.")
                            .multilineTextAlignment(.center)
                            .minimumScaleFactor(0.01)
                    }
                        .foregroundColor(Color(red: 0.01, green: 0.45, blue: 0.16))
                        .frame(width: 307, height: 118, alignment: .topLeading)
                        .background(
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 381, height: 186)
                                .background(Color("FallAc"))
                                .cornerRadius(56)
                        )
                    
                        .padding(30)
                    
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 377, height: 325)
                        .background(
                            Image("fallRes")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 397, height: 325)
                                .clipped()
                        )
                        .cornerRadius(36)
                        .padding(20)
                    
                    NavigationLink(destination: Begin()){
                        Text("Try again?")
                        
                    }.simultaneousGesture(TapGesture().onEnded{
                        seasonScores.scoresReset()
                    })
                    .padding(7)
                    .background(Color("tempAc"))
                    .foregroundStyle(.white)
                    .cornerRadius(60)
                   
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                   .edgesIgnoringSafeArea(.all)
                   .background(Color("Fall"))
                
            }  else  if seasonScores.winterScore >= 3 {
                VStack {
                    VStack {
                        Text("Winter")
                            .frame(maxWidth: .infinity, alignment: .center)
                            .font(.custom("Sniglet-Regular", size: 35))
                        
                        Text("Despite the cold, you're always greeting others with the warmest heart around. You're loyal, thoughtful, and honest-- make sure the people in your life truly appreciate that.")
                            .multilineTextAlignment(.center)
                            .minimumScaleFactor(0.01)
                    }
                        .foregroundColor(Color(red: 0.01, green: 0.45, blue: 0.16))
                        .frame(width: 307, height: 118, alignment: .topLeading)
                        .background(
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 381, height: 186)
                                .background(Color("WinterAc"))
                                .cornerRadius(56)
                        )
                    
                        .padding(30)
                    
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 377, height: 325)
                        .background(
                            Image("winterRes")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 397, height: 325)
                                .clipped()
                        )
                        .cornerRadius(36)
                        .padding(20)
                    
                    NavigationLink(destination: Begin()){
                        Text("Try again?")
                          
                    }.simultaneousGesture(TapGesture().onEnded{
                        seasonScores.scoresReset()
                    })
                    .padding(7)
                    .background(Color("tempAc"))
                    .foregroundStyle(.white)
                    .cornerRadius(60)
                   
                    
                } .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .edgesIgnoringSafeArea(.all)
                    .background(Color("WinterBG"))
            }  else  {
                VStack {
                    VStack {
                        Text("Hold on!")
                            .frame(maxWidth: .infinity, alignment: .center)
                            .font(.custom("Sniglet-Regular", size: 35))
                        
                        Text("You haven't finished your quiz yet! Finish all the questions and then come back!")
                            .multilineTextAlignment(.center)
                            .minimumScaleFactor(0.01)
                    }
                    .foregroundColor(Color(.white))
                        .frame(width: 307, height: 118, alignment: .topLeading)
                        .background(
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 381, height: 186)
                                .background(Color("tempAc"))
                                .cornerRadius(56)
                        )
                    
                    .padding(30)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 377, height: 325)
                        .background(
                            Image("tempRes")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 397, height: 325)
                                .clipped()
                        )
                        .cornerRadius(36)
                        .padding(20)
                    
                    NavigationLink(destination: Begin()){
                        Text("Try again?")
                    }.simultaneousGesture(TapGesture().onEnded{
                        seasonScores.scoresReset()
                    })
                    .padding(7)
                    .background(Color("tempAc"))
                    .foregroundStyle(.white)
                    .cornerRadius(60)
                   
                } .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .edgesIgnoringSafeArea(.all)
                    .background(Color("tempBG"))
                
                
            }
           
         //   Button("Try Again?", action: seasonScores.scoresReset)
         
        }
        
    }
    
}

#Preview {
    Results()
        .environmentObject(SeasonScores())
}
