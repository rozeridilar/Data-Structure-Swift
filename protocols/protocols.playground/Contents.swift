import UIKit

enum Format {
    case XML
    case JSON
}

protocol Representable{
    func represantation( asType: Format ) -> String
    init(asType: Format, contents: String)
}

class Employee : Representable {
    
    private var name: String = "Rozeri"
    required init(asType: Format, contents: String) {
        /**/
    }
    init(name: String){
        self.name = name
    }
    func represantation(asType: Format) -> String {
        switch asType {
        case .XML:
            return "<Employee name = \(name)>"
        case .JSON:
            return "{Employee: {name: \(name)}}"
        }
    }
    
}

//print(Employee(name: "Rozeri").represantation(asType: .JSON))

protocol Cacheable{
    //static var versionID: Double { get set }
    func flash()
}

class CacheableEmployee: Employee, Cacheable{
   // static var versionID: Double
    func flash() {
        /**/
    }
}

func doSomething(x: Representable & Cacheable){
    print(x.represantation(asType: .JSON))
    x.flash()
}

doSomething(x: CacheableEmployee(name: "Rozeri"))

var names = ["Fred Flinstone","Wilma Flinstone","Barney Rubble","Betty Rubble"]
let result = names.filter{$0.contains("Flinstone")}.map{$0.prefix(5)}.reduce("", {x,y in "\(x) \(y)"})
print(result)
