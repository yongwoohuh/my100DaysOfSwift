import UIKit

// day 006 Closures part 1

// # Creating basic closures
//let driving = {
//    print("I'm driving in my car")
//}
//
//driving()

// # Accepting parameters in a closure
//let driving = { (place: String) in
//    print("I'm going to \(place) in my car")
//}
//
//driving("London")

// # Returning a values from a closure
//let driving = { (place: String) in
//    print("I'm goning to \(place) in my car")
//}
//
//let drivingWithReturn = { (place: String) -> String in
//    return "I'm going to \(place) in my car"
//}
//
//let message = drivingWithReturn("London")
//print(message)
//
//let paymet = { () -> Bool in
//    print("Paying an anonymous person...")
//    return true
//}

// # Closures as parameters
//let driving = {
//    print("I'm driving in my car")
//}
//
//func travel(action: () -> Void) {
//    print("I'm getting ready to go.")
//    action()
//    print("I arrived!")
//}
//
//travel(action: driving)

// # Trailing closure syntax
//func travel(action: () -> Void) {
//    print("I'm getting ready to go.")
//    action()
//    print("I arrived!")
//}
//
//travel() {
//    print("I'm driving in my car")
//}
//
//travel {
//    print("I'm driving in my car")
//}

// day 007 Closures part 2

// # Using closures as parameters when they accept parameters
//func travel(action: (String) -> Void) {
//    print("I'm getting ready to go.")
//    action("London")
//    print("I arrived!")
//}
//
//travel { (place: String) in
//    print("I'm going to \(place) in my car")
//}

// # Using closures as parameters when they return values
//func travel(action: (String) -> String) {
//    print("I'm getting ready to go.")
//    let description = action("London")
//    print(description)
//    print("I arrived!")
//}
//
//travel { (place: String) -> String in
//    return "I'm going to \(place) in my car"
//}
//
//func reduce(_ values: [Int], using closure: (Int, Int) -> Int) -> Int {
//    // start with a total equal to the first value
//    var current = values[0]
//
//    // loop over all the values in the array, counting from index 1 onwards
//    for value in values[1...] {
//        // call our closure with the current value and the array element, assigning its result to our current value
//        current = closure(current, value)
//    }
//
//    // send back the final current value
//    return current
//}
//
//let numbers = [10, 20, 30]
//let sum = reduce(numbers) { (runningTotal: Int, next: Int) in
//    runningTotal + next
//}
//print(sum)
//
//let multiplied = reduce(numbers) { (runningTotal: Int, next: Int) in
//    runningTotal * next
//}
//print(multiplied)
//
//let sumUsingPlusSign = reduce(numbers, using: +)
//print(sumUsingPlusSign)

// # Shorthand parameter names
//func travel(action: (String) -> String) {
//    print("I'm getting ready to go.")
//    let description = action("London")
//    print(description)
//    print("I arrived!")
//}
//
//travel { (place: String) -> String in
//    return "I'm going to \(place) in my car"
//}
//
//travel { place -> String in
//    return "I'm going t \(place) in my car 2"
//}
//
//travel { place in
//    return "I'm going to \(place) in my car 3"
//}
//
//travel { place in
//    "I'm going to \(place) in my car 4"
//}
//
//travel {
//    "I'm goint to \($0) in my car 5"
//}

// # Closures with multiple parameters
//func travel(action: (String, Int) -> String) {
//    print("I'm getting ready to go.")
//    let description = action("London", 60)
//    print(description)
//    print("I arrived!")
//}
//
//travel {
//    "I'm going to \($0) at \($1) kilometers per hour."
//}

// # Returning closures from functions
//func travel() -> (String) -> Void {
//    return {
//        print("I'm going to \($0)")
//    }
//}
//
//let result = travel()
//result("London")
//
//let result2 = travel()("London")
//
//print(Int.random(in: 1...10))
//
//func getRandomNumber() -> Int {
//    Int.random(in: 1...10)
//}
//
//print(getRandomNumber())
//
//func makeRandomGenerator() -> () -> Int {
//    let function = { Int.random(in: 1...10) }
//    return function
//}
//
//let generator = makeRandomGenerator()
//let random1 = generator()
//print(random1)

// # Capturing values
//func travel() -> (String) -> Void {
//    var counter = 1
//
//    return {
//        print("\(counter). I'm going to \($0)")
//        counter += 1
//    }
//}
//
//let result = travel()
//result("London")
//result("London")
//result("London")
//
//func makeRandomNumberGenerator() -> () -> Int {
//    var previousNumber = 0
//    
//    return {
//        var newNumber: Int
//        
//        repeat {
//            newNumber = Int.random(in: 1...3)
//        } while newNumber == previousNumber
//        
//        previousNumber = newNumber
//        return newNumber
//    }
//}
//
//let generator = makeRandomNumberGenerator()
//
//for _ in 1...10 {
//    print(generator())
//}
