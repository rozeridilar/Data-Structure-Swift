import Foundation

func isEqual<T: Equatable> (left: T, right: T) -> Bool{
    return left == right
}

print(isEqual(left: "dd", right: "dd"))

struct Contact: Equatable{
    
    let name: String
    let address: String
    
    init(_ name: String, address: String){
        self.name = name
        self.address = address
    }
    
    static func == (lhs: Contact, rhs: Contact) -> Bool{
        return lhs.name == rhs.name && lhs.address == rhs.address
    }
}

let oldCampus = Contact("Old Apple Campus", address: "Old Address")
let newCampus = Contact("New Apple Campus", address: "New Address")

print(isEqual(left: oldCampus, right: newCampus))
