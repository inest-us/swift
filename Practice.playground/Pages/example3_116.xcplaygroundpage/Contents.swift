class Employee {
    var name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    convenience init() {
        self.init(name: "Undefined", age: 0)
    }
}

let employee1 = Employee(name: "George", age: 28)
print(employee1.name) //George
print(employee1.age) //28

let employee2 = Employee()
print(employee2.name) //Undefined
print(employee2.age) //0

class OfficeEmployee: Employee {
    var department: String = "Undefined"
    init(name: String, age: Int, department: String) {
        self.department = department
        super.init(name: name, age: age)
    }
}
let employee3 = OfficeEmployee(name: "George", age: 29, department:"Mail")
print(employee3.name) //George
print(employee3.age) //29
print(employee3.department) //Mail

