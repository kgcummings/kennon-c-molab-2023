//
//  SeasonScores.swift
//  WEEK 9 FINALPROJ
//
//  Created by Kennon Cummings on 11/30/23.
//

import Foundation

class SeasonScores: ObservableObject {
    @Published private var springScore = 0
    @Published  private var summerScore = 0
    @Published private var fallScore = 0
    @Published private var winterScore = 0
    
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
}
    
