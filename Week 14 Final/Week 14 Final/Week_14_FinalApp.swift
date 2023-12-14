//
//  Week_14_FinalApp.swift
//  Week 14 Final
//
//  Created by Kennon Cummings on 12/13/23.
//

import SwiftUI

@main
struct Week_14_FinalApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(SeasonScores())
        }
    }
}
