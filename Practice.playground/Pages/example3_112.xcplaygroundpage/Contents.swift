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

var list = [OfficeEmployee(), WarehouseEmployee(), OfficeEmployee()]

/*
 as—This operator converts a value of one class to another class when possible.
 
 The conversions are not always guaranteed, and that is why this operator comes in two forms: as! and as?.
 
 These versions of the as operator work in similar way as the optionals.
 The as! operator forces the conversion and returns an error if the conversion is not possible,
 
 and the as? operator tries to convert the object and returns an optional with the new object or nil in case of failure.

 */

for obj in list {
    if obj is OfficeEmployee {
        /*
         Once the object is casted (converted) into its real type, we can access its properties and methods.
         */
        let tmp = obj as! OfficeEmployee
        tmp.deskNumber = 100
    } else if obj is WarehouseEmployee {
        let tmp = obj as! WarehouseEmployee
        tmp.area = "New Area"
    }
}

for obj in list {
    if let tmp = obj as? OfficeEmployee {
        tmp.deskNumber = 100
    } else if let tmp = obj as? WarehouseEmployee {
        tmp.area = "New Area"
    }
}


