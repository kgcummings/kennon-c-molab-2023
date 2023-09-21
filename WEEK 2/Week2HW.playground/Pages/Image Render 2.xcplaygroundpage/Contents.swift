//: [Previous](@previous)

import Foundation
import UIKit

func imageTime(_ str: String) -> UIImage {
    let url = URL(string: str)
    let imgData = try? Data(contentsOf: url!)
    let uiImage = UIImage(data:imgData!)
    return uiImage!
}

let cloud = "UIColor(red: 0.78, green: 0.71, blue: 0.65, alpha: 1.00)"
let pic1 = "https://i.pinimg.com/564x/fc/66/38/fc6638ce87785849d7ee8044c69b84e2.jpg"
let pictureone = imageTime(pic1)

let size = CGSize(width: 400, height: 400)
let renderer = UIGraphicsImageRenderer(size: size)

let pic = renderer.image {(context) in
    pictureone.draw(in: CGRect(x: 0, y: 0, width: 200, height: 200))
    UIColor(red: 0.78, green: 0.71, blue: 0.65, alpha: 1.00).setFill()
    context.fill(CGRect(x: 0, y: 175, width: 200, height: 100))
    UIColor(red: 0.78, green: 0.71, blue: 0.65, alpha: 1.00).setFill()
    context.fill(CGRect(x: 200, y: 100, width: 70, height: 175))
    UIColor(red: 0.56, green: 0.43, blue: 0.38, alpha: 1.00).setFill()
    context.fill(CGRect(x: 0, y: 175, width: 70, height: 100))
    UIColor(red: 0.08, green: 0.23, blue: 0.43, alpha: 1.00).setFill()
    context.fill(CGRect(x: 200, y: 50, width: 70, height: 60))
    UIColor(red: 0.08, green: 0.23, blue: 0.43, alpha: 1.00).setFill()
    context.fill(CGRect(x: 60, y: 175, width: 20, height: 80))
    UIColor(red: 0.56, green: 0.43, blue: 0.38, alpha: 1.00).setFill()
    context.fill(CGRect(x: 200, y: 0, width: 70, height: 50))
    
}

pic
