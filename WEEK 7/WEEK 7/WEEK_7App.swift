//
//  WEEK_7App.swift
//  WEEK 7
//
//  Created by Kennon Cummings on 10/25/23.
//

import SwiftUI

@main
struct WEEK_7App: App {
    var body: some Scene {
        WindowGroup {
            CatAnim()
                .environmentObject(AudioDJ())
        }
    }
}
