import Foundation

public class Contact{
    let name: String
    let phoneNumber: String?
    
    public lazy var prettyPrint: () -> String = { [weak self] in
        if let strongSelf = self{
            var result = strongSelf.name
            if let phoneNumber = strongSelf.phoneNumber{
                result = "Name: \t \(result) PhoneNumber: \t \(phoneNumber)"
            }
            return result
        }else{
            return ""
        }
    }
    
    public init (name: String, phoneNumber: String? = nil){
        self.name = name
        self.phoneNumber = phoneNumber
        print("Contact name \(name) has been initiliazed.")
    }
    
    deinit {
        print("Contact name \(name) has been deinitialized.")
    }
}

var johnDoe: Contact? = Contact(name: "johnDoe", phoneNumber: "+1 555 555")
print(johnDoe!.prettyPrint())
johnDoe = nil
