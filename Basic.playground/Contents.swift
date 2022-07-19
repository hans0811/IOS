import UIKit

var greeting = "Hello, playground"

print("Hello, world")

var myVariable = 42
myVariable = 50

let myConstant = 42
//myConstant = 50

let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70

// Tuple
let http404Error = (404, "Not Found")
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")


let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names{
    print("Hello, \(name)")
}

for index in 1...5{
    print("\(index) times 5 is \(index * 5 )")
}

// Optional
var greeting1: String? = "Hello word"

if let greeting_b = greeting1{
    print(greeting1)
}

func printString( _ str_to_print: String) -> String {
    print(str_to_print)
    return str_to_print
}


// classws - reference type, Structure by value

// self
// Book - App coda
// IOS Programming: The big nerd Ranch Guide
