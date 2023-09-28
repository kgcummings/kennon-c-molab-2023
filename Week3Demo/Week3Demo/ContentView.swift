//
//  ContentView.swift
//  Week3Demo
//
//  Created by Kennon Cummings on 9/21/23.
//

let backgroundGradient = LinearGradient(
    colors: [Color.blue, Color.green],
    startPoint: .top, endPoint: .bottom)

import SwiftUI

let flowers = ["🥀","🌼","🌻","🌸","🌹","🌺","🪷","🌷","💐","🪻","🐝","🌿","🌾"]

let flowerboxname = ["peaceful","green","sunshiney","picturesque","springtime","lovely","delightful"]
//let flowerpwr = Text(flowers.randomElement()!).font(.largeTitle)

struct ContentView: View {
    var body: some View {
        ZStack{
            backgroundGradient
            VStack {
                Image(systemName: "sun.max.fill").font(.system(size: 60))
                    .imageScale(.large)
                    .foregroundColor(.yellow)
                Text("my " + flowerboxname.randomElement()! +  " garden!").fontWeight(.bold).foregroundColor(Color.yellow)
                Spacer()
                Grid {
                    //https://developer.apple.com/documentation/swiftui/grid
                    GridRow {
                        Text(flowers.randomElement()!).font(.largeTitle)
                        Text(flowers.randomElement()!).font(.largeTitle)
                    }
                    Divider()
                    GridRow {
                        Text(flowers.randomElement()!).font(.largeTitle)
                        Text(flowers.randomElement()!).font(.largeTitle)
                    }
                    Divider()
                    GridRow {
                        Text(flowers.randomElement()!).font(.largeTitle)
                        Text(flowers.randomElement()!).font(.largeTitle)
                    }
                    Divider()
                    GridRow {
                        Text(flowers.randomElement()!).font(.largeTitle)
                        Text(flowers.randomElement()!).font(.largeTitle)
                    }
                }
                
             Spacer()
          

            
            }
        }
      
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
.background(backgroundGradient)
    }
}
