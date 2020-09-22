import UIKit

// day 009 Structs, part two

// # Initializers
//struct User {
//    var username: String
//}
//
//struct UserWithInit {
//    var username: String
//
//    init() {
//        username = "Anonymous"
//        print("Creating a new user!")
//    }
//}
//
//var user = User(username: "twostraws")
//var user1 = UserWithInit()
//user1.username = "twostraws"
//
//struct Employee {
//    var name: String
//    var yearsActive = 0
//}
//
//let roslin = Employee(name: "Laura Roslin")
//let adama = Employee(name: "William Adama", yearsActive: 45)
//
//struct Employee {
//    var name: String
//    var yearsActive = 0
//}
//
//extension Employee {
//    init() {
//        self.name = "Anonymous"
//        print("Creating an anonymous employee....")
//    }
//}
//
//// creating a named employee now works
//let roslin = Employee(name: "Luara Roslin")
//
//// as does creating an anonymous employee
//let anon = Employee()

// # Referring to the current instance
//struct Person {
//    var name: String
//
//    init(name: String) {
//        print("\(name) was born!")
//        self.name = name
//    }
//}
//let person = Person(name: "Yongwoo")

// # Lazy properties
//struct FamilyTree {
//    init() {
//        print("Creating family tree!")
//    }
//}
//
//struct Person {
//    var name: String
//    lazy var familyTree = FamilyTree()
//
//    init(name: String) {
//        self.name = name
//    }
//}
//
//var ed = Person(name: "Ed")
//ed.familyTree

// # Static properties and methods
//struct Student {
//    static var classSize = 0
//    var name: String
//
//    init(name: String) {
//        self.name = name
//        Student.classSize += 1
//    }
//}
//
//let ed = Student(name: "Ed")
//let taylor = Student(name: "Taylor")
//print(Student.classSize)

// # Access control
//struct Person {
//    private var id: String
//
//    init(id: String) {
//        self.id = id
//    }
//
//    func identity() -> String {
//        return "My social security number is \(id)"
//    }
//}
//
//let ed = Person(id: "12345")
//print(ed.identity())
