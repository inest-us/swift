class Item {
    var quantity = 0.0
    var name = "Not defined"
    var price = 0.0
    deinit {
        print("this instance was erased")
    }
}
var purchase: Item? = Item()
purchase = nil

