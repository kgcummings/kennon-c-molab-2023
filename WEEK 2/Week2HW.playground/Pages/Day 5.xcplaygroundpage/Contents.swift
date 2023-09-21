//: [Previous](@previous)

import Foundation

let hunger = 50

if hunger >= 51 {
    print("Yikes! Get some food!")
}

if hunger <= 50 {
    print("Yum!")
}

let name = "john doe"
if name != "Anonymous" {
    print("Hello, \(name)!")
}


let hunger2 = 50
if hunger2 >= 51 {
    print("Yikes! Get some food!")
} else {
    print("Yum!")
}


enum Pets {
    case cat, dog, bird, bunny, unknown
}

let animals = Pets.cat

switch animals {
case .cat:
    print("meow!")
case .dog:
    print("woof!")
case .bird:
    print("tweet!")
case .bunny:
    print("hop!")
case .unknown:
    print("What?!")
}


// ternary conditional
let age = 18
print(age >= 18 ? "Yes" : "No")

let meals = ["Breakfast","Lunch","Dinner"]
let mealCount = meals.isEmpty ? "Eat please!!!" : "You've had \(meals.count) meals"
print(mealCount)
// a prompt, something to send back if true, something to send back if false  - WTF
