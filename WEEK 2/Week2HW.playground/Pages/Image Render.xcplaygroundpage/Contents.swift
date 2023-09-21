//: [Previous](@previous)

import Foundation
import UIKit


let sz = CGSize(width: 100, height: 100)
let renderer = UIGraphicsImageRenderer(size: sz)
let image = renderer.image { context in
    
    let rt = renderer.format.bounds
    context.stroke(rt)
    
    UIColor.green.setFill()
    context.fill(CGRect(x: 0, y: 50, width: 100, height: 50))
    UIColor.blue.setFill()
    context.fill(CGRect(x: 0, y: 0, width: 100, height: 50))
    UIColor.systemGreen.setFill()
    context.fill(CGRect(x: 0, y: 50, width: 100, height: 2))
    
    UIColor.blue.setStroke()
    context.stroke(renderer.format.bounds)
    
    var box = renderer.format.bounds
    for _ in 1...2 {
        box = box.insetBy(dx: 4, dy: 4)
        context.stroke(box)
    }
    
    let font = UIFont.systemFont(ofSize: rt.height * 0.8)
    let string = NSAttributedString(string: "🌹", attributes: [.font: font ])
    string.draw(at: CGPoint(x: 7, y:0))
}

image
