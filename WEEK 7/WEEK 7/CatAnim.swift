//
//  CatAnim.swift
//  WEEK 7
//
//  Created by Kennon Cummings on 10/25/23.
//

import SwiftUI

let frames = ["01","02","03","04"]
let sleep = "sleepy.png"
let backgroundGradient = LinearGradient(
    colors: [Color("bgColor")],
    startPoint: .top, endPoint: .bottom)

struct SlideView: View {
    var name:String
    var body: some View {
        VStack {
            Image(name)
                .resizable()
            Text(name)
        }
    }
}


struct CatAnim: View {
    @State var slideIndex = 0
    @State var isPlaying = false
    
    let clock = Timer.publish(every: 0.25, on: .main, in: .common).autoconnect()
    @EnvironmentObject var audioDJ:AudioDJ;
    
    var body: some View {
        VStack{
            Text("Watch him go!")
                .font(.largeTitle)
            .foregroundColor(.textcolor)
            
            let name = frames[slideIndex]
            SlideView(name: name)
            //Image("sleepy")
            HStack {
                Button(action: previousItemAction) {
                    Image(systemName: "arrowshape.left")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.textcolor)
                }
                .padding()
                Spacer()
                Button(action: playPauseAction) {
                    Image(systemName: isPlaying ? "pause" : "play")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.textcolor)
                }
                Spacer()
                Button(action: nextItemAction) {
                    Image(systemName: "arrowshape.right")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.textcolor)
                }
                .padding()
            }
        } .background(backgroundGradient)
        .onReceive(clock) { _ in
            if (isPlaying) {
                nextItemAction()
            }
        }
    }
    
    func playPauseAction() {
        isPlaying.toggle()
        if isPlaying {
            audioDJ.play()
        }
        else {
            audioDJ.stop()
        }
    }
    func previousItemAction() {
        slideIndex = (slideIndex - 1 + frames.count) % frames.count
    }
    func nextItemAction() {
        slideIndex = (slideIndex + 1) % frames.count
    }
}


struct PlayPause_Previews: PreviewProvider {
    static var previews: some View {
        CatAnim()
            .environmentObject(AudioDJ())
    }
}
