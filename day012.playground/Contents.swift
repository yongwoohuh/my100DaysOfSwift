import UIKit

// day 12 Optionals

// # Handling missing data
//var age: Int? = nil
//age = 38

// # Unwrapping optionals
//var name: String? = nil
//
//if let unwrapped = name {
//    print("\(unwrapped.count) letters")
//} else {
//    print("Missing namee")
//}
//
//func getUsername() -> String? {
//    "Taylor"
//}
//
//if let username = getUsername() {
//    print("Username is \(username)")
//} else {
//    print("No username")
//}

// # Unwrapping with guard
//func greet(_ name: String?) {
//    guard let unwrapped = name else {
//        print("You didn't provide a name!")
//        return
//    }
//
//    print("Hello, \(unwrapped)!")
//}
//
//greet("Paul")
//
//let username: String? = nil
//greet(username)
//
//func getMeaningOfLife() -> Int? {
//    42
//}
//
//func printMeaningOfLife() {
//    if let name = getMeaningOfLife() {
//        print(name)
//    }
//}
//
//func printMeaningOfLifeUsingGuard() {
//    guard let name = getMeaningOfLife() else {
//        return
//    }
//
//    print(name)
//}
//
//printMeaningOfLife()
//printMeaningOfLifeUsingGuard()

// # Force unwrapping
//let str = "5"
//let num = Int(str)!
//
//let url = URL(string:"https://www.apple.com")!
//
//let randomNumber = (1...10).randomElement()!

// # Implicitly unwrapped optionals
//let age: Int! = 15

// # Nil coalescing
//func username(for id: Int) -> String? {
//    if id == 1 {
//        return "Taylor Swift"
//    } else {
//        return nil
//    }
//}
//
//let user = username(for: 15) ?? "Anonymous"
//
//let scores = ["Picard": 800, "Data": 7000, "Troi": 900]
//let crusherScore = scores["Crusher"] ?? 0
//let crusherScore2 = scores["Crusher", default: 0]

// # Optional chaining
//let names = ["John", "Paul", "George", "Ringo"]
//let beatle = names.first?.uppercased()
//
//let names = ["Vincent": "va Gogh", "Pablo": "Picasso", "Claude": "Monet"]
//let surnameLetter = names["Vincent"]?.first?.uppercased() ?? "?"

// # Optional try
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
//
//do {
//    try checkPassword("password")
//    print("That password is good")
//} catch {
//    print("You can't use that password.")
//}
//
//if let result = try? checkPassword("password") {
//    print("Result was \(result)")
//} else {
//    print("D'oh.")
//}
//
//try! checkPassword("sekrit")
//print("OK")

// # Failable initializers
//let str = "5"
//let num = Int(str)
//
//struct Person {
//    var id: String
//
//    init?(id: String) {
//        if id.count == 9 {
//            self.id = id
//        } else {
//            return nil
//        }
//    }
//}
//
//struct Employee {
//    var username: String
//    var password: String
//
//    init?(username: String, password: String) {
//        guard password.count >= 8 else { return nil }
//        guard password.lowercased() != "password" else { return nil }
//
//        self.username = username
//        self.password = password
//    }
//}
//
//let tim = Employee(username: "TimC", password: "apple")
//let craig = Employee(username: "CraigF", password: "hairf0rceOne")

// # Typecasting
//class Animal { }
//class Fish: Animal { }
//
//class Dog : Animal {
//    func makeNoise() {
//        print("Woof!")
//    }
//}
//
//let pets = [Fish(), Dog(), Fish(), Dog()]
//
//for pet in pets {
//    if let dog = pet as? Dog {
//        dog.makeNoise()
//    }
//}
//
//class Person {
//    var name = "Anonymous"
//}
//
//class Customer: Person {
//    var id = 12345
//}
//
//class Employee: Person {
//    var salary = 50_000
//}
//
//let customer = Customer()
//let employee = Employee()
//let people = [customer, employee]
//
//for person in people {
//    if let customer = person as? Customer {
//        print("I'm a customer, with id \(customer.id)")
//    } else if let employee = person as? Employee {
//        print("I'm a employee, earning $\(employee.salary)")
//    }
//}
