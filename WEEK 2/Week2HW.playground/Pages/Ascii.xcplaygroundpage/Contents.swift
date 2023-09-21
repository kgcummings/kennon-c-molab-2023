//: [Previous](@previous)

import Foundation

let path = Bundle.main.path(forResource:"mouse.txt", ofType: nil)
let str = try String(contentsOfFile: path!,encoding: .utf8)
print(str)

func load(_ file :String) -> String {
    let path = Bundle.main.path(forResource: file, ofType: nil)
    let str = try? String(contentsOfFile: path!, encoding: .utf8)
    return str!
}
//print(load("mouse.txt"))


//"       ____()()"
//"      /      @@"
//"`~~~~~\_;m__m._>o"

//: [Next](@next)
