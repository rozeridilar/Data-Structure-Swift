import Foundation

class Person {
    let name: String
    var macbook: MacBook?
    
    init(name: String, macbook: MacBook?) {
        self.name = name
        self.macbook = macbook
        print("\(name) has been initialized.")
    }
    
    deinit {
        print("\(name) has been deinitialized.")
    }
}

class MacBook{
    let name: String
    weak var owner: Person?
    
    init(name: String, owner: Person?) {
        self.name = name
        self.owner = owner
        print("Macbook named \(name) has been initialized.")
    }
    
    deinit {
        print("Macbook named \(name) has been deinitialized.")
    }
}


func createObjects(){
   var rozeri = Person(name: "Rozeri", macbook: nil)
   var matilda = MacBook(name: "Mathilda", owner: nil)
    
    rozeri.macbook = matilda
    matilda.owner = rozeri

}

print(createObjects())
