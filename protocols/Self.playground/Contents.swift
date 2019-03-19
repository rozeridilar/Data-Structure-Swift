import Foundation

protocol SupportReplace{
    func replaceWith(other: Self)
}

class ReplacebleEmployee: SupportReplace{
    var name: String = ""
    init(name: String){
        self.name = name
    }
    func replaceWith(other: ReplacebleEmployee) {
        name = other.name
    }
}

func overwrite<T: SupportReplace>(original: T, with: T){
    original.replaceWith(other: with)
}

let fred = ReplacebleEmployee(name: "Fred")
let barney = ReplacebleEmployee(name: "Barney")

overwrite(original: fred, with: barney)
