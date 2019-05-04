protocol Printer {
    var name: String { get set }
    func printdescription()
}

struct Employees: Printer {
    var name: String
    var age: Int
    func printdescription() {
        print("Description: \(name) \(age)")
    }
}

struct Offices : Printer {
    var name: String
    var employess: Int
    func printdescription() {
        print("Description: \(name) \(employess)")
    }
}

let employee1 = Employees(name: "John", age: 32)
employee1.printdescription()  // "Description: John 32"

let office1 = Offices(name: "Mail", employess: 2)
office1.printdescription() // "Description: Mail 32"

var list: [Printer] = [employee1, office1]
for element in list {
    element.printdescription()
}

