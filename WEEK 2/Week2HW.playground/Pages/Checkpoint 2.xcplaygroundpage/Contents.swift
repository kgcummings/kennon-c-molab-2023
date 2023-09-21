import UIKit

//create an array of strings, then write some code that prints the number of items in the array and also the number of unique items in the array.
let colors = ["red","blue","green","green","orange","yellow","green"]
 let colorcount = colors.count
let setcol = Set(colors)
setcol.count
print("The array has", colorcount ,"colors, but", setcol.count, "unique colors." )

