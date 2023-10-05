//
//  newcontentview.swift
//  WEEK 4
//
//  Created by Kennon Cummings on 10/5/23.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Listen to my Symphony~")
            Image(systemName: "music.note")
                .imageScale(.large)
                .foregroundStyle(.tint)
           
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
