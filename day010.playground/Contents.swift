import UIKit

// day 10

// # Creating your own classess
//class Dog {
//    var name: String
//    var breed: String
//
//    init(name: String, breed: String) {
//        self.name = name
//        self.breed = breed
//    }
//}
//
//let poppy = Dog(name: "Poppy", breed: "Poodle")

// # Class inheritance
//class Dog {
//    var name: String
//    var breed: String
//
//    init(name: String, breed: String) {
//        self.name = name
//        self.breed = breed
//    }
//}
//
//class Poodle: Dog {
//    init(name: String) {
//        super.init(name: name, breed: "Poodle")
//    }
//}

// # Overriding methods
//class Dog {
//    func makeNoise() {
//        print("Woof!")
//    }
//}
//
//class Poodle: Dog {
//    override func makeNoise() {
//        print("Yip!")
//    }
//}
//
//let poppy = Poodle()
//poppy.makeNoise()

// # Final classes
//final class Dog {
//    var name: String
//    var breed: String
//
//    init(name: String, breed: String) {
//        self.name = name
//        self.breed = breed
//    }
//}

// # Copying objects
//class Singer {
//    var name = "Taylor Swift"
//}
//
//var singer = Singer()
//print(singer.name)
//
//var singerCopy = singer
//singerCopy.name = "Justin Bieber"
//print(singer.name)

// # Deinitializers
//class Person {
//    var name = "John Doe"
//
//    init() {
//        print("\(name) is alive!")
//    }
//
//    deinit {
//        print("\(name) is no more!")
//    }
//
//    func printGreeting() {
//        print("Hello, I'm \(name)")
//    }
//}
//
//for _ in 1...3 {
//    let person = Person()
//    person.printGreeting()
//}

// # Mutability
//class Singer {
//    var name = "Taylor Swift"
//}
//
//let taylor = Singer()
//taylor.name = "Ed Sheeran"
//print(taylor.name)
