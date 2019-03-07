import Foundation

public class Contact{
    let name: String
    let phoneNumber: String?
    
    public init (name: String, phoneNumber: String? = nil){
        self.name = name
        self.phoneNumber = phoneNumber
        print("Contact name \(name) has been initiliazed.")
    }
    
    deinit {
        print("Contact name \(name) has been deinitialized.")
    }
}

var johnDoe: Contact? = Contact(name: "johnDoe")
johnDoe = nil
