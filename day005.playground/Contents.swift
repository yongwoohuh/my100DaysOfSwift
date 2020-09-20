import UIKit

// # Day 005 Functions

// ## Writing functions
//func printHelp() {
//    let message = """
//    Welcom to MyApp!
//
//    Run this app inside a directory of images and
//    MyApp will resze them all into thumbnails
//    """
//
//    print(message)
//}
//
//printHelp()

// ## Accepting parameters
//print("Hello, world!")
//
//func square(number: Int) {
//    print(number * number)
//}
//
//square(number: 8)

// ## Returning values
//func square(number: Int) -> Int {
//    return number * number
//}
//
//let result = square(number: 8)
//print(result)
//
//func doMath() -> Int {
//    return 5 + 5
//}
//
//func doMoreMath() -> Int {
//    5 + 5
//}
//
//func greet(name: String) -> String {
//    name == "Taylor Swift" ? "Oh wow!" : "Hello, \(name)"
//}
//
//greet(name: "Yongwoo")
//greet(name: "Taylor Swift")
//
// Returning multiple values
// first pass
//func getUser() -> [String] {
//    ["Taylor", "Swift"]
//}
//let user = getUser()
//print(user[0])
//
// second pass
//func getUser() -> [String: String] {
//    ["first": "Taylor", "last": "Swift"]
//}
//let user = getUser()
//print(user["first"])
//
// using Tuples for return
//func getUser() -> (first: String, last: String) {
//    (first: "Taylor", last: "Swift")
//}
//let user = getUser()
//print(user.first)

// ## Parameter labels
//func square(number: Int) -> Int {
//    return number * number
//}
//
//let result = square(number: 8)
//
//func sayHello(to name: String) {
//    print("Hello, \(name)!")
//}
//sayHello(to: "Taylor")
//
//func setAge(for person: String, to value: Int) {
//    print("\(person) is now \(value)")
//}
//
//setAge(for: "Paul", to: 40)

// ## Omitting parameter labels
//func greet(_ person: String) {
//    print("Hello, \(person)!")
//}
//
//greet("Taylor")

// ## Default parameters
//func greet(_ person: String, nicely: Bool = true) {
//    if nicely == true {
//        print("Hello, \(person)!")
//    } else {
//        print("Oh no, it's \(person) again...")
//    }
//}
//greet("Taylor")
//greet("Taylor", nicely: false)
//
//func findDirections(from: String, to: String, route: String = "fastest", avoidHighways: Bool = false) {
//    print("directions from \(from) to \(to) with \(route) route.")
//}
//
//findDirections(from: "London", to: "Glasgow")
//findDirections(from: "London", to: "Glasgow", route: "scenic")
//findDirections(from: "London", to: "Glasgow", route: "scenic", avoidHighways: true)

// ## Variadic functions
//print("Haters", "gonna", "hate")
//
//func square(numbers: Int...) {
//    for number in numbers {
//        print("\(number) squared is \(number * number)")
//    }
//}
//square(numbers: 1, 2, 3, 4, 5)

// ## Writing throwing functions
//enum PasswordError: Error {
//    case obvious
//}
//
//func checkPassword(_ password: String) throws -> Bool {
//    if password == "password" {
//        throw PasswordError.obvious
//    }
//
//    return true
//}

// ## Running throwing functions
//do {
//    try checkPassword("password")
//    print("That password is good!")
//} catch {
//    print("You can't use that password.")
//}

// ## inout parameters
//func doubleInPlaces(number: inout Int) {
//    number *= 2
//}
//var myNumber = 10
//doubleInPlaces(number: &myNumber)
