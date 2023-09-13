func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet("John", on: "Wednesday")


func greet(person: String, day: String, food: String) -> String {
    return "Hello \(person), today is \(day). Today's lunch special is \(food)."
}
greet(person: "Bob", day: "Tuesday", food: "salad")

// Remove the day parameter. Add a parameter to include today’s lunch special in the greeting.
//when remove day parameter -- code gets mad that a comma plus the new parameter is needed.


//Rewrite the closure to return zero for all odd numbers.
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)

numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})

