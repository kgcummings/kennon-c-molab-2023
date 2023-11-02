import UIKit

var greeting = "Hello, playground"

// DAY 10
struct Dog  {
    let breed: String
    let name: String
    let age: Int
    
    func printSummary(){
        print("\(name) is a \(age) year old \(breed) ")
    }
}

let buddy = Dog(breed: "Boxer", name: "Buddy", age: 3)
let fifi = Dog(breed: "Poodle", name: "Fifi", age: 9)

print(buddy.age)
print(fifi.name)

buddy.printSummary()
fifi.printSummary()

struct Employee {
    let name: String
    var vacation: Int
   mutating func takeVacation(days: Int) { //functions inside of structures are called 'methods'
        if vacation > days {
            vacation -= days //swift cant change struct data of vacremain in two spots-- how swift handles constants.. any functions that want to write data must be marked specially-- mutating!
            print("\(name) is going on Vacation!")
            print("Days remaining: \(vacation)")
        } else {
            print("Not enough days!")
        }
    }
}

var tom = Employee(name: "Tom", vacation: 15) // cant use it on a constant -- always make the mutated function a variable!
// a constant/variable from a structure is called an 'instance'
//instance of a structure = initializer
tom.takeVacation(days: 9)
tom.vacation -= 5
print(tom.vacation)
//when this is done, original value is entirely lost!!!

//computing property values dynamically

struct Employee2 {
    let name: String
    var vacationAllowed = 14 //keeping original value!
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        get {
            vacationAllowed - vacationTaken //looks like a function... but its a variable!
        }
        set {
            vacationAllowed = vacationTaken + newValue //automatic provided by setter
        }
        }
}

var bob = Employee2(name: "Bob", vacationAllowed: 14)
bob.vacationTaken += 4 //calling the mini function, computation instead of storage
bob.vacationRemaining = 5
print(bob.vacationAllowed)

//getter and setter?


// How to take action when a property changes

struct Game {
    var score = 0 {
        didSet { //whenevr score changes, didSet causes print to change -- also an oldValue score for previous scores
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3
game.score += 1

struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)") //seen earlier!
        }
        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)") //showing progress!
        }
    }
}

var app = App()
app.contacts.append("Jimmy B")
app.contacts.append("Maya F")
app.contacts.append("Iris D")
app.contacts.append("Michael S")


// creating custom initializers
struct Player {
    let name: String
    let number: Int
    
    init(name: String) {
           self.name = name
            number = Int.random(in: 1...99) //adding extra things as we need them!... but 1. no funct keyword, 2. init doesnt have an explicit return type, 3. using self to assign values-- without self, name=name which is confusing
       }
   }

let player = Player(name: "Garry T")
print(player.number)

//let player = Player(name: "Garry T", number: 15)
