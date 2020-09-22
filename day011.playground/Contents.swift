import UIKit

// day 11 Protocols and extensions

// # Protocols
//protocol Identifiable {
//    var id: String { get set }
//}
//
//struct User: Identifiable {
//    var id: String
//
//    func displayID(thing: Identifiable) {
//        print("My ID is \(thing.id)")
//    }
//}
//
//struct Event: Identifiable {
//    var id: String
//
//    func displayID(thing: Identifiable) {
//        print("My ID for event is \(thing.id)")
//    }
//}
//
//let user = User(id: "12345")
//user.displayID(thing: user)
//
//let event = Event(id: "Monday Morning")
//event.displayID(thing: event)
//
//protocol Purchaseable {
//    var name: String { get set }
//}
//
//struct Book: Purchaseable {
//    var name: String
//    var author: String
//}
//
//struct Movie: Purchaseable {
//    var name: String
//    var actors: [String]
//}
//
//struct Car: Purchaseable {
//    var name: String
//    var maufacturer: String
//}
//
//struct Coffee: Purchaseable {
//    var name: String
//    var strength: Int
//}
//
//func buy(_ item: Purchaseable) {
//    print("I'm buying \(item.name)")
//}
//
//let book = Book(name: "Hacking with Swift", author: "Paul Hudson")
//let movie = Movie(name: "Tenten", actors: ["Someone", "Someone", "Someone"])
//let car = Car(name: "Model 3", maufacturer: "Tesla")
//
//buy(book)
//buy(movie)
//buy(car)

// # Protocol inheritance
//protocol Payable {
//    func calculateWages() -> Int
//}
//
//protocol NeedsTraining {
//    func study()
//}
//
//protocol HasVacation {
//    func takeVacation(days: Int)
//}
//
//protocol Employee: Payable, NeedsTraining, HasVacation { }
//
//struct MyWorker: Employee {
//    var name: String
//
//    func calculateWages() -> Int {
//        9001
//    }
//
//    func study() {
//        print("I'm studying")
//    }
//
//    func takeVacation(days: Int) {
//        print("I have \(days) of vacation")
//    }
//}
//
//let steve = MyWorker(name: "Steve")
//print(steve.calculateWages())
//steve.study()
//steve.takeVacation(days: 5)
//
//protocol Product {
//    var price: Double { get set }
//    var weight: Int { get set }
//}
//
//protocol Computer: Product {
//    var cpu: String { get set }
//    var memory: Int { get set }
//    var storage: Int { get set }
//}
//
//protocol Laptop: Computer {
//    var screenSize: Int { get set }
//}

// # Extensions
//extension Int {
//    func squared() -> Int {
//        return self * self
//    }
//}
//
//extension Int {
//    var isEven: Bool {
//        return self % 2 == 0
//    }
//}
//
//let number = 8
//number.squared()
//
//let number2 = 16
//number2.isEven
//number2.isMultiple(of: 2)

// # Protocol extensions
//let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
//let beatles = Set(["John", "Paul", "George", "Ringo"])
//
//extension Collection {
//    func summarize() {
//        print("There are \(count) of us:")
//
//        for name in self {
//            print(name)
//        }
//    }
//}
//
//pythons.summarize()
//beatles.summarize()
//
//let numbers = [4, 8, 15, 16]
//let allEven = numbers.allSatisfy { $0.isMultiple(of: 2) }
//
//let numbers2 = Set([4, 8, 15, 16])
//let allEven2 = numbers2.allSatisfy { $0.isMultiple(of: 2) }
//
//let numbers3 = ["four": 4, "eight": 8, "fifteen": 15, "sixteen": 16]
//let allEven3 = numbers3.allSatisfy { $0.value.isMultiple(of: 2) }
//
//print(allEven)
//print(allEven2)
//print(allEven3)

// # Protocol-oriented programming
//protocol Identifiable {
//    var id: String { get set }
//    func identify()
//}
//
//extension Identifiable {
//    func identify() {
//        print("My ID is \(id).")
//    }
//}
//
//struct User: Identifiable {
//    var id: String
//}
//
//let twostraws = User(id: "twostraws")
//twostraws.identify()
