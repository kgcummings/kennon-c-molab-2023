//
//  PlayingAudio.swift
//  WEEK 4
//
//  Created by Kennon Cummings on 10/4/23.
//

import SwiftUI
import AVFoundation

let audiow = [
    "PIANO.wav","SOUND1.wav","meow.wav","RAIN.wav",
]

func playTheTunes(_ fileName:String) ->
AVAudioPlayer? {
    let path = Bundle.main.path(forResource: fileName, ofType:nil)!
    let url = URL(fileURLWithPath: path)
    do {
        return try AVAudioPlayer(contentsOf: url)
    } catch {
        print("There has been an error!: \(error)")
    }
    return nil
}

struct PlayingAudio: View {
    @State private var navPath = NavigationPath()
    var body: some View {
        NavigationStack(path: $navPath){
            
            VStack {
                Text("THE MUSIC ZONE")
                    .font(.system(size: 36).weight(.bold))
                    .multilineTextAlignment(.center)
// BUTTON ZONE
// REFERENCE: https://sarunw.com/posts/swiftui-image-button/ , WEEK 6 UPDATE: ADDED IMAGES TO LINK INSTEAD OF BEING STAGNANT
               // List{
                    
                 
            //    }
                
                Button(action: {
                    player?.stop()
                    navPath.append( "piano" )
                    player = playTheTunes("PIANO.wav")
                    player?.play()
                })  {
                    Image(systemName: "pianokeys")
                        .resizable()
                        .scaledToFit()
                        .frame(width:100, height:100)
                        .foregroundColor(Color.white)
                        .accentColor(.black)
                   Text("Piano Keys")
                }
                    
                Button(action: {
                    player?.stop()
                    navPath.append( "confusion" )
                    player = playTheTunes("SOUND1.wav")
                    player?.play()
                })  {
                    Image(systemName: "exclamationmark.bubble.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width:100, height:100)
                        .foregroundColor(Color.white)
                        .accentColor(.black)
                   Text("Confusion")
                }
                    
                Button(action: {
                    player?.stop()
                    navPath.append( "a cat" )
                    player = playTheTunes("meow.wav")
                    player?.play()
                })  {
                    Image(systemName: "cat")
                        .resizable()
                        .scaledToFit()
                        .frame(width:100, height:100)
                        .foregroundColor(Color.white)
                        .accentColor(.black)
                   Text("Cat's Meow")
                }
                 
                
                Button(action: {
                    player?.stop()
                    navPath.append( "a calming storm" )
                    player = playTheTunes("RAIN.wav")
                    player?.play()
                })  {
                    Image(systemName: "cloud.bolt.rain")
                        .resizable()
                        .scaledToFit()
                        .frame(width:100, height:100)
                        .foregroundColor(Color.white)
                        .accentColor(.black)
                   Text("Evening Storm")
                }
                Spacer()
        
                }
                
                //  .navigationTitle("The Music App")
                .background(Color.blue)
                .frame(width:330)
                .foregroundStyle(Color.white)
                .background(Color.pink)
                .navigationBarTitle("The Music Zone")
                .navigationBarItems(
                    trailing:
                        NavigationLink(
                            destination:
                                newImage()
                        )
                    {
                        Text("Add Sound")
                    }
                )
                .toolbarBackground(Color.gray, for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
                .navigationDestination(for: String.self) { str in
                    Text("the sound of \(str)...")
                        .background(Color.yellow)
                }
            }
        }
        
        @State private var player: AVAudioPlayer? = nil
    
    }
    
    struct Page1_Previews: PreviewProvider {
        static var previews: some View {
            PlayingAudio()
        }
        
    }
    
    
    #Preview {
        PlayingAudio()
    }
