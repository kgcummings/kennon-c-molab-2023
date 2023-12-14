//
//  SeasonScores.swift
//  WEEK 9 FINALPROJ
//
//  Created by Kennon Cummings on 11/30/23.
//

import Foundation


class SeasonScores: ObservableObject {
    @Published var springScore = 0
    @Published var summerScore = 0
    @Published var fallScore = 0
    @Published var winterScore = 0
    

    @Published var springWin = false
    @Published var summerWin = false
    @Published var fallWin = false
    @Published var winterWin = false
    
    init() {
        print("SeasonScores init")
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
    
    struct SeasonWins {
        
   //     if winterScore > summerScore || winterScore > springScore || winterScore > fallScore {
     //       winterWin.toggle()
  //      }
    }
    
    
}


