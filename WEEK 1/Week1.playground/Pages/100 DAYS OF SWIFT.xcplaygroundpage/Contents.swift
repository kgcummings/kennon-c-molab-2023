import UIKit



// NOTES
// semicolons not needed

var name = "Ted"
name = "Rebecca"
name = "Keeley"

var character = "Daphne"

print(character)

character = "Fred"

print(character)

// tell swift explicitly that you know you're using an an int with a double by treating one as rhe other (Int(b))
// double = decimals, integers = int
// data types must remain consistent!

//DAY 2

// BOOLEAN = TRUE/FALSE - booleans dont have arithmatic modifiers.. but they do have ! - which means 'not' - making true into false, vice versa
// toggle also flips it = gameOver.toggle()

let first = "hi "
let second = "there!"
let greeting = first + second

let first2 = "one"
let second2 = "three"

let phrase = "Hi! my name is \(first2) and i'm \(second2) years old."
print(phrase)
// great for small things but... dont do it too much

// CHECKPOINT 1 - Creates a constant holding any temperature in Celsius. Converts it to Fahrenheit by multiplying by 9, dividing by 5, then adding 32.
let celDegrees = 30
let farDegrees = celDegrees * 9 / 5 + 32
print("The celcius is \(celDegrees) and the farenheit is \(farDegrees)")


// DAY 3
//Arrays cant store TWO data types -- arrays similar to standard arrays - starting with 0,1,2... appending adds new things!
//using .count for counting arrays... can remove things with remove(at:x)

// using contains() as a kind of search feature for arrays! using reversed() for the.... reverse

// but be CAREFUL! storing too much in arrays might make things complicated and messy-- bw mindful of the amount of info in your arrays! try to keep like-minded things in arrays... unless you store them in dictionaries!

let employee = ["name": "Taylor Swift", "job" : "singer", "location": "Nashville"]
print(employee["name", default: "Unknown"])
//optional taylor swift...? with dictionaries-- the answer might not even be there! add in a default input for now!

//sets - dont allow duplicates, dont keep an order
let colors = Set(["red","blue","green"])
print(colors)
//adding in new things- xyz.INSERT, not append
// this sounds awful... why use it?
// sometimes you WANT to weed out duplicates - easier to search for individual sections

// enums = "Safe"? defining particular range of values, SPECIFICITY!
enum Weekday {
    case monday
    case tuesday
    case wednesday
}
