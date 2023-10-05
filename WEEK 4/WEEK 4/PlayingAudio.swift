//
//  PlayingAudio.swift
//  WEEK 4
//
//  Created by Kennon Cummings on 10/4/23.
//

import SwiftUI
import AVFoundation

let audiow = [
    "PIANO.wav","SOUND1.wav",
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
                Button("Piano Music") {
                    player?.stop()
                    navPath.append( "piano" )
                    player = playTheTunes("PIANO.wav")
                    player?.play()
                }
                Button("Confused sound") {
                    player?.stop()
                    navPath.append( "confusion" )
                    player = playTheTunes("SOUND1.wav")
                    player?.play()
                }
                Spacer()
            }
            .navigationTitle("The Music App")
            .navigationDestination(for: String.self) { str in
                Text("the sound of \(str)")
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
