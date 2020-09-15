import UIKit

// # Arrays
//let john = "John Lennon"
//let paul = "Paul McCartney"
//let george = "George Harrison"
//let ringo = "Ringo Starr"
//
//let beatles = [john, paul, george, ringo]
//beatles[1]

// # Sets
//let colors = Set(["red", "green", "blue"])
//let colors2 = Set(["red", "green", "blue", "red"])

// # Tuples
//var name = (first: "Taylor", last: "Swift")
//name.0
//name.1
//name.first
//name.last
// error
//name = (first: "Justin", age: 25)

// # Arrays vs sets vs tuples
//let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")
//let set = Set(["aardvark", "astronaut", "azalea"])
//let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

// # Dictionaries
//let heights = [
//    "Taylor Swift": 1.78,
//    "Ed Sheeran": 1.73,
//]
//heights["Taylor Swift"]

// # Dictionary default values
//let favoriteIceCream = [
//    "Paul": "Chocolate",
//    "Sophie": "Vanilla",
//]
//
//favoriteIceCream["Paul"]
//favoriteIceCream["Charlotte", default: "Unknown"]

// # Creating empty collections
//var teams = [String: String]()
//teams["Paul"] = "Red"
//
//var results = [Int]()
//
//var words = Set<String>()
//var numbers = Set<Int>()
//
//var scores = Dictionary<String, Int>()
//var resutls = Array<Int>()

// # Enumerations
//enum Result {
//    case success
//    case failure
//}
//let resutl4 = Result.failure

// # Enum associated values
//enum Activity {
//    case bored
//    case running(destination: String)
//    case talking(topic: String)
//    case singing(volume: Int)
//}
//
//let talking = Activity.talking(topic: "football")
//
//enum Weather {
//    case sunny
//    case windy(speed: Int)
//    case rainy(chance: Int, amount: Int)
//}

// # Enum raw values
//enum Planet: Int {
//    case mercury = 1
//    case venus
//    case earth
//    case mars
//}
//
//let earth = Planet(rawValue: 3)
//
//enum Mood: Int {
//    case happy
//    case sad
//    case grumpy
//    case sleepy
//    case hungry
//}

