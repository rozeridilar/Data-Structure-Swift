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
    func flash()
}

class CacheableEmployee: Employee, Cacheable{
    func flash() {
        <#code#>
    }
    
}

func doSomething(x: Representable){
    print(x.represantation(asType: .JSON))
}
