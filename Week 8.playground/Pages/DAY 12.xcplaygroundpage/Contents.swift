//: [Previous](@previous)

import Foundation

// CREATING YOUR OWN CLASSES
// classes... different than structs!
// similarities -- creating and naming, adding propertie + observers, can create custom initializers
// differences -- making one class that builds upon functions of other class -- or overriding, swift wont generate memberwise initializer for classes, if you copy instance of class itll hold same data, we can add deinitializers to run when final copy is destroyed, constant class instances can have variable properties changed

//classes prioritized 3: all copies of a class share the same data. This means many parts of your app can share the same information, so that if the user changed their name in one screen all the other screens would automatically update to reflect that change.

class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10

// kinda identical to struct rn..... but the unique parts of classes are vital

//How to make one class inherit from another

class Employee {
    let hours: Int //one constant property

    init(hours: Int) {
        self.hours = hours
    }
    
    func printSum(){
        print("I work \(hours) hours a day!!!")
    }
}

class Developer: Employee { //the colon is the inheriter !
    func work() {
        print("I'm writing out code for \(hours) hours!")
    }
}

class Manager: Employee {
    func work() {
        print("I'm visiting meetings for \(hours) hours!")
    }
    
    override func printSum() {
        print("I'm a manager who will sometimes work \(hours) hours a day, but other times spend hours hiding in the breakroom avoiding responsibility!")
    }
}

let james = Developer(hours: 8)
let lyra = Manager(hours: 10)

james.work()
lyra.work()

let tristan = Manager(hours: 4)

tristan.printSum()
 // if a child class wants to change a trait from a parent class -- use the OVERRIDE keyword!
// if class doesnt support inheritants -- mark it as FINAL --   final class Manager:


//How to add initializers for classes

class Vehicle {
    let isElectric: Bool

    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConv: Bool
    
    init(isElectric: Bool, isConv: Bool){
        self.isConv = isConv
        super.init(isElectric: isElectric)
    } // allows to call up to methods from parent classes
}


let tesla = Car(isElectric: true, isConv: false)

// if child class doesnt have its own initializers-- automativally inherits parents initializers


//how to copy classes


class User {
    var username = "Anonymous"
    
    func copy() -> User{
        let user = User()
        user.username = username
        return user
    }// how to make a unique class copy
}

// one class-- but now shared across all properties of this class

var user1 = User()
var user2 = user1
user2.username = "us3rn4m3"

print(user1.username)
print(user2.username)

// they all change at once! not a bug, but a feature-- sharing common data in multiple parts!

// HOW TO CREATE DEINITIALIZERS FOR A CLASS

// deinitials dont exist with functions or structs! and have NO ()!! they run when every class instance is destroyed, and cannot be called directly!
// scope - context where info is available! local scopes.... 
