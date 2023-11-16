//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//HOW TO CREATE AND USE PROTOCOLS
//func commute(distance: Int, using vehicle: Bike) { //dont really care abt specificics... care about performing traveling act-- defining a series of properties and methods
    // lots of code here
//}

protocol Vehicle { //capital letter! two properties and two methods
    var name: String { get }
    var currentPass: Int { get set } // readable + writable
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
} //listing all methods! no function bodies!

//designing types that work with this proto -- creating new structs, classes, or enums that implement the requirements for that protocol = ADOPTING the protocol

struct Car: Vehicle {
    
    let name = "Car"
    var currentPass = 2
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }

    func travel(distance: Int) {
        print("I'm driving \(distance)km.")
    }

    func openSunroof() {
        print("it's such a nice day!!!!")
    }
}

func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
          print("woah-- that's too slow!! i'll try a different vehicle.")
      } else {
          vehicle.travel(distance: distance)
      }
  }

 
//works... but code isnt actually adding value

struct Bicycle: Vehicle {
    
    let name = "Bike"
    var currentPass = 1
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }
    
    func travel(distance: Int) {
        print("I'm cycling \(distance)km.")
    }
}

func getTravEstimates(using vehicles: [Vehicle], distance: Int){
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)km.")
    }
}
let bike = Bicycle()
commute(distance: 50, using: bike)

let car = Car()
commute(distance: 100, using: car)

// really flexible! you can also return vehicles! you can also conform to as many protocols as needed


getTravEstimates(using: [car,bike], distance: 150)



// How to use opaque return types

// dont have to understand how it works-- just what it means


//func getRandomNumber() -> Int {
  //  Int.random(in: 1...6)
//}

//func getRandomBool() -> Bool {
  //  Bool.random() //true or false randomly
//}

// both 'equatable' -- compared for equality! '=='
// protocol containing more than one 'categories' -- different types of cars all under 'vehicle' protocol -- each supplies same methods and properties, as long as they follow parameters, flexibility in code
// int.random and bool.random are equatable but not interchangable- print(5 == true) impossible -- so hiding this protocol info in these types just isnt possible
// this is where opaque return types come in! hiding information in code... but not from swift compilers! can return a specific type of vehicle, but keeping it flexible-- swift compiler understands types of data being shared around!

protocol View { } // swift knows how to make the correct layout for this :]

func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}

print(getRandomNumber() == getRandomNumber())

let num = getRandomNumber()
num
// swift still knows its an integer, so it can still be compared with other integers
// allows us to change our mind!


// How to create and use extensions

// trimmingCharacters(in:) -- trimming certain characters at start and ends of strings



extension String { //short way of doing this action
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines) //automatically refers to current string
    }
    mutating func trim() {
        self = self.trimmed()
    } 
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

var quote = "   blehhhhhhhhhhhhh   "
let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)
quote.trim()
//let trimmed = quote.trimmed()

//but.... what about just a function?

//func trim(_ string: String) -> String {
  //  string.trimmingCharacters(in: .whitespacesAndNewlines)
//}
//let trimmed2 = trim(quote)
//shorter! so what gives?
// 1. code completion -- when we type 'quote', extension parameters are brought up- quicker!
// 2. organization -- naturally grouped by type of data
//3. internal access -- full access because they're a full part of the original type


// swift naming guidelines -- if youre returning a new value, use word endings like -ed or -ing

// can use extensions to add properties-- but must ONLY be computed, now stored


let lyrics = """
But I keep cruising
Can't stop, won't stop moving
It's like I got this music in my mind
Saying it's gonna be alright
"""

print(lyrics.lines.count)

// swift -- if you create a custom initializer in a struct, swift will no longer automatically provide memberwise one for us
