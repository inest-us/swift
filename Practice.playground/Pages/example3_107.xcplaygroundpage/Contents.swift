class Employee {
    var name = "Undefined"
    var age = 0
    
    func createbadge() -> String {
        return "Employee \(name) \(age)"
    }
}

class OfficeEmployee : Employee {
    var department = "Undefined"
    var deskNumber = 0
    
    override func createbadge() -> String {
        let oldbadge = super.createbadge()
        return "\(oldbadge) \(department)"
    }
}

class WarehouseEmployee : Employee {
    var area = "Undefined"
}

let employee = OfficeEmployee()
employee.name = "George"
employee.age = 25
employee.department = "Mail"

var badge = employee.createbadge()
print("Badge: \(badge)")

var list = [OfficeEmployee(), WarehouseEmployee(), OfficeEmployee()]
var countOffice = 0
var countWarehouse = 0

/*
 is — This operator returns a Boolean value indicating whether or not the value is of a certain type.
 */
for obj in list {
    if obj is OfficeEmployee {
        countOffice += 1
    } else if obj is WarehouseEmployee {
        countWarehouse += 1
    }
}

print(countOffice) //2
print(countWarehouse) //1
