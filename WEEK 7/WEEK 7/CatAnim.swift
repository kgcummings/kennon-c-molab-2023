//
//  CatAnim.swift
//  WEEK 7
//
//  Created by Kennon Cummings on 10/25/23.
//

import SwiftUI
import Foundation
// import needed to define Publishers
import Combine

let frames = ["01","02","03","04"]
let sleep = "sleepy.png"
// Avoid crash for very small every: values
let speedMin = 0.0001
//var speed = 0.25

// for SwiftUI to react to changes in speed,
//  use an ObservableObject Model class
class Model: ObservableObject {
    @Published var speed = 0.25

    var clock: Publishers.Autoconnect<Timer.TimerPublisher>
    // can't declare clock using type without import
    // var clock = Timer.publish(every: 0.25, on: .main, in: .common).autoconnect()
    
    init(speed nspeed:Double) {
        speed = nspeed;
        clock = Timer.publish(every: nspeed, on: .main, in: .common).autoconnect()
    }
    
    func updateSpeed(by delta: Double) {
        print("Model updateSpeed speed", speed)
        speed += delta;
        if speed <= speedMin {
            speed = speedMin;
        }
        clock = Timer.publish(every: speed, on: .main, in: .common).autoconnect()
    }
}

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
    @StateObject var model = Model(speed: 0.5);
    @State var slideIndex = 0
    @State var isPlaying = false
        
    @EnvironmentObject var audioDJ:AudioDJ;
    
    var body: some View {
        VStack{
            Text("Watch him go!")
                .font(.largeTitle)
            .foregroundColor(.textcolor)
            
            Text("Current Speed:") + Text(" \(model.speed)").foregroundStyle(.red)
            let name = frames[slideIndex]
            SlideView(name: name)
            //Image("sleepy")
            HStack {
                Spacer()
                Button(action: {
                    model.updateSpeed(by: 0.05);
                }){
                    Image(systemName: "tortoise")
                        .resizable()
                        .frame(width: 45, height: 50)
                        .foregroundColor(.textcolor)
                }.padding()
                Spacer()
                Button(action: playPauseAction) {
                    Image(systemName: isPlaying ? "pause" : "play")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.textcolor)
                }.padding()
                Spacer()
                Button(action: {
                    model.updateSpeed(by: -0.05);
                }){
                    Image(systemName: "hare")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.textcolor)
                }
                Spacer()
            }
        } .background(backgroundGradient)
            .onReceive( model.clock) { _ in
        //https://www.hackingwithswift.com/quick-start/swiftui/how-to-use-a-timer-with-swiftui ?
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

// to init interdependent struct properties:
// https://developer.apple.com/forums/thread/128366

