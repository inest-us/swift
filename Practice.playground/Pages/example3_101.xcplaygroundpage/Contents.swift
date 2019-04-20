import Foundation

class Employee {
    var name = "Undefined"
    
    func changeName(name: String)  {
        self.name = name
    }
}

let emp1 = Employee()
emp1.changeName(name: "Martin")
print("Name: \(emp1.name)")
