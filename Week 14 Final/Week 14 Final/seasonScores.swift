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
    
    func scoresReset() {
      springScore = 0
    winterScore = 0
        summerScore = 0
        fallScore = 0
        print("Scores Reset!")
    }
    
    struct SeasonWins {
        
   //     if winterScore > summerScore || winterScore > springScore || winterScore > fallScore {
     //       winterWin.toggle()
  //      }
    }
    
    
}


