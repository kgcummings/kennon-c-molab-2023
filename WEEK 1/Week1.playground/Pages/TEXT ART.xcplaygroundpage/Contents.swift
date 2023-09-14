//: [Previous](@previous)

import Foundation

var x = 0


//: [Next](@next)
var rows=["───▄▀▀▀▄▄▄▄▄▄▄▀▀▀▄───","───█▒▒░░░░░░░░░▒▒█───","────█░░█░░░░░█░░█────","─▄▄──█░░░▀█▀░░░█──▄▄─","█░░█─▀▄░░░░░░░▄▀─█░░█"]

for row in rows{
    print(row)
}

func bearState(bear: String) -> String {
    return "This bear's name is " + bear + "!"
}

print(bearState(bear:"Honey"))

//───▄▀▀▀▄▄▄▄▄▄▄▀▀▀▄───
//───█▒▒░░░░░░░░░▒▒█───
//────█░░█░░░░░█░░█────
//─▄▄──█░░░▀█▀░░░█──▄▄─
//█░░█─▀▄░░░░░░░▄▀─█░░█

