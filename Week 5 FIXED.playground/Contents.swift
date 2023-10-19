import UIKit

// DAY 7
func diceRoll() -> Int {
    return Int.random(in: 1...6)
}

let result = diceRoll()
print(result)
// ^ function can be called anywhere
//calling sorted() gets letters in alphabetical order
func lettersSame(string1: String, string2: String) -> Bool{
    let first = string1.sorted()// sorted(string1)
    let second = string2.sorted() //sorted(string2)
    return first == second //first = second
}

let string1 = "hotdog"
let string2 = "hamburger"

lettersSame(string1: "hotdog", string2: "hamburger")

// OR return string1.sorted() == string2.sorted()
func pyth(a: Double, b: Double) -> Double {
 //   let input = a * a + b * b
   // let root = sqrt(input)
   // return root
    sqrt(a*a + b*b)
}

let c = pyth(a: 3, b: 4)
print(c)


//return multiple values
func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName:"Swift")
}

//let user = getUser()
//print("Name: \(user[0]) \(user[1])")
let user = getUser()
print("Name: \(user.firstName) \(user.lastName)") //swift knows its gonna be available
//print("Name" \(user["firstname"]) )
 
// customizing parameter labels
//let rolls = rollDice(sides: 6, count: 4) //<- easy to read and understand!
let animal = "i cant wait to see animals in the zoo!"
print(animal.hasPrefix("i cant"))

func isUppercase(_ string: String) -> Bool { // remove eternal parameter name
    string == string.uppercased()
}

let string = "HI"
let result2 = isUppercase(string)

// you can also set external and internal parameters -- (for number: Int) gives you ability to call it 'number' internally, and for externally

// DAY 8
//default values for parameters
func printTimesTables(for number: Int, end: Int = 12) {
    for c in 1...end {
        print("\(c) x \(number) is \(c * number)")
    }
}

printTimesTables(for: 5)
// sensible default, while having possibilithy for customization
// the =12 makes the default answer 5 times 12 if function submission is left blank!
// keepingCapacity: true can keep the number of slots in an array the same even if you remove all the info in the slots with a removeAll function!
//handling errors in functions
// step 1: define all errors that MIGHT happen in code... step 2: write a function that works as normal, but can throw 1+ errors if something weird happens... step 3: run the function and handle errors!
enum PassError: Error {
    case short, obvious //types of errors an error can fall into
}

    func checkPass (_ password: String) throws -> String{ //not SPECIFYING the throws type
        if password.count < 5 {throw PassError.short}
        if password == "password" {throw PassError.obvious}

        if password.count < 8 {
            return "pretty good..."
        } else if password.count < 10 {
            return "good!"
        } else {
            return "Great!"
        }
    }

let string3 = "password"
do {
    let result = try checkPass(string3) //can also do "try!" -- doesnt require 'do' or 'catch', but risking critical errors...
    print("Password reading: \(result)")
} catch PassError.short {
    print("Please use a longer password.")
} catch PassError.obvious {
    print("...really???")
} catch {
    print("There was an error.")
}


// CHECKPOINT 4
//The challenge is this: write a function that accepts an integer from 1 through 10,000, and returns the integer square root of that number. That sounds easy, but there are some catches:
//  You can’t use Swift’s built-in sqrt() function or similar – you need to find the square root yourself.
//If the number is less than 1 or greater than 10,000 you should throw an “out of bounds” error.
// You should only consider integer square roots – don’t worry about the square root of 3 being 1.732, for example.
// If you can’t find the square root, throw a “no root” error.
enum boundsError: Error {
    case OOB, nomatch
}
func numFind(of num: Int) throws -> String {
    if num < 1 && num > 10000 {
       throw boundsError.OOB
    } else {
        for i in 1...100{
            if num == i * i {
                return "\(i)"
    }
        }
    }
    throw boundsError.nomatch
}


do {
    let result = try numFind(of: 9)
    print("Password reading: \(result)")
} catch boundsError.OOB {
    print("Out of bounds!")
} catch boundsError.nomatch {
    print("There was an error-- No root!")
} // this took forever... aaaaaahhhhh -- the 'of:' part was the crucial thing that i was missing!
// DAY 9
//how to create + use closures -- assigning functions to variables
func greetGuy(){
    print("hai")
}

greetGuy()

var greetcopy = greetGuy
greetcopy()

let sayHi = { (name: String) -> String in
    "hi \(name)!"
}

sayHi("john") // chunk of code passed around, able to be called anything -- cant put code outside of brace
//"why would i need this...." - video, also me
// void = nothing
func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let userperson = data(1989)
print(userperson) //name info is lost..!
//.sorted function can allow customization
//trailing closures
let team = ["dasher", "rudolph", "dancer", "cupid", "comet"]

let reindeerSleigh = team.sorted{
    if $0 == "rudolph" {
        return true
    } else if $1 == "rudolph" {
        return false
    }
    return $0 < $1
}

print(reindeerSleigh)
// why do we need to repeat in closure? we dont!
// dollar numbers... not as clear

let dOnly = team.filter {$0.hasPrefix("d")}
print(dOnly) //picking out specifics
let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam) //changing aspects of array
