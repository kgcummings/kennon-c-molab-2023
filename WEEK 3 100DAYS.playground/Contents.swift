import UIKit

//reuse code with fucntions

func welcomeCrew(){
    print("hi")
    print("whats your name?")
    print("its so nice to meet you!")
}


welcomeCrew()
// call site

let roll = Int.random(in: 1...20)
print(roll)


func printTimesTables(number: Int, end: Int){
    // number: Int ... parameter! its the template!
    for i in 1...end {
        print ("\(i) * \(number) is \(i * number)")
    }
}

printTimesTables(number: 8, end: 20)


let root = sqrt(169)
print(root)


func rollDice() -> Int {
    // return MUST be an int
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)


//CREATED ANSWER
func sameLetters(string1: String, string2: String) -> Bool {
    return string1 == string2
}

print(sameLetters(string1: "hotdog", string2: "hotdog1"))

//GIVEN ANSWER
func areLettersIdentical(string3: String, string4: String) -> Bool {
    let first = string3.sorted()
    let second = string4.sorted()
    return first == second
}

areLettersIdentical(string3: "hotdog2", string4: "hotdog2")


func lettersFast(string5: String, string6: String) -> Bool {
    string5.sorted() == string6.sorted()
}

lettersFast(string5: "hat", string6: "hat")
    
    // when a function has only one line of code-- automatic return setting applied!
