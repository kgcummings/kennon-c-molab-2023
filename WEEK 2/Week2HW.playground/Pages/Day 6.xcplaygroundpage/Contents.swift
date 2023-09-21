//: [Previous](@previous)

import Foundation

// use a for loop to repeat work

let fruits = ["apples","stawberries", "bananas", "grapes"]
for yum in fruits {
    print("I love to eat \(yum).")
}
// in this instance -- even if not defined before, 'yum' is created and can only be used in this for loop

// How to use a while loop to repeat work
var clock = 0
while clock < 10 {
    print("\(clock)...")
    clock += 1
}
print("Ding ding ding!")


let id = Int.random(in: 1...100)
print(id)

var roll = 0
while roll != 20 {
    roll = Int.random(in: 1...20)
    print("I got a \(roll)")
}
print("Critical Hit! Woo!")
