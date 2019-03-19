import Foundation

//Quick Arrays
var names = ["Fred Flinstone","Wilma Flinstone","Barney Rubble","Betty Rubble"]
let result = names.filter{$0.contains("Flinstone")}.map{$0.prefix(5)}.reduce("", {x,y in "\(x)\(y) "})
print(result)

//Protocols
enum Format {case XML,JSON}

protocol Representable{
    func represantation( asType: Format ) -> String
    //init(asType: Format, contents: String)
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

print(Employee(name: "Rozeri").represantation(asType: .JSON))
func doS(x: Representable){
    print(x.represantation(asType: .JSON))
}

doS(x: Employee(name: "Rozeri"))

protocol Cacheable: Representable{
    static var versionID: Double { get set }
    var objectID: String { get }
    init()
    func flush() -> String
    mutating func load (flushId: String)
    static func setTargets(to: OutputStream, from: InputStream)
}

class CacheableEmployee: Employee, Cacheable{
    static var versionID = 1.2
    static var idPool = 0
    let myId = idPool + 1
    var objectID: String {get{ return "CacheableEmployee Employee - \(CacheableEmployee.versionID) + -\(myId)"}}
    required init() {
        super.init(asType: .JSON, contents: "")
    }

    required init(asType: Format, contents: String){
        super.init(asType: asType, contents: contents)
    }

    func flush() -> String {
        /**/
        return objectID
    }

    func load(flushId: String) {
        /**/
    }

    static func setTargets(to: OutputStream, from: InputStream) {
        /**/
    }
}

class AnotherClassEmployee:Employee, Cacheable{
    static var versionID: Double = 1.6

    var objectID: String{get{return "something"}}

    required init() {
        super.init(asType: .JSON, contents: "")
    }

    required init(asType: Format, contents: String){
        super.init(asType: asType, contents: contents)
    }

    func flush() -> String {
        /**/
        return objectID
    }

    func load(flushId: String) {
        /**/
    }

    static func setTargets(to: OutputStream, from: InputStream) {
        /**/
    }

}

print(CacheableEmployee.versionID)
CacheableEmployee.versionID = 1.8
print(CacheableEmployee.versionID)
print(AnotherClassEmployee.versionID)


