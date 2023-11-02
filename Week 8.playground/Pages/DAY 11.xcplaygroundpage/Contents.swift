//: [Previous](@previous)

import Foundation

//DAY 11

// How to limit access to internal data using access control

struct BankAccount {
   private(set) var funds = 0 //PRIVATE! unmodifiable and secret, access control

    mutating func deposit(amount: Int) {
        funds += amount
    }

    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}
// controls in place in how to withdrawl money
var account = BankAccount()
account.deposit(amount: 100)
let success = account.withdraw(amount: 200)

if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}
//funds property is exposed to us externally... you can bypass logic by adding in an absurd numbers-- we need parameters!
//private -- dont let anything outside the struct use this!
//fileprivate - dont let anything outside the current file use this!!!
// public - let anyone use this!
//private(set) - let anyone read this, let my internal methods write it!


// Static properties and methods

// used for example data

struct School {
    static var studentCount = 0

    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}

School.add(student: "Student Studentson") //dont need to make a new school instance!
print(School.studentCount)
//its why we can modify studentcount!

//if you wanna mix and match static + nonstatic... two rules! ONE: if you wanna access regular properies from static stuff, you CANT!!!   TWO: to access static from non-static, always use types name like School.studentCount - use Self (CAPITAL S) to refer to curent type

struct appstoreData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.hackingwithswift.com"
}

appstoreData.version

// storing example data w/ static

struct Employee {
    let username: String
    let password: String

    static let example = Employee(username: "usernane2023", password: "12345")
}

Employee.example

// create a struct to store information about a car, including its model, number of seats, and current gear, then add a method to change gears up or down. Have a think about variables and access control: what data should be a variable rather than a constant, and what data should be exposed publicly? Should the gear-changing method validate its input somehow?

struct CarModel {
    let model: String
    let seatnmbr: String
   private(set) var gear = 1
    
    mutating func gearUp(){
        if gear + 1 > 10 {
            print("Woah! you're already at the highest gear!")
        } else {
            gear += 1
            print(gear)
        }
    }
    
    mutating func gearDown(){
        if gear - 1 < 1 {
            print("Hey! It can't go any slower!")
        } else {
            gear -= 1
            print(gear)
        }
    }
}

var cartime = CarModel(model: "Subaru", seatnmbr: "6", gear: 10)
cartime.gearUp() //it works :]
