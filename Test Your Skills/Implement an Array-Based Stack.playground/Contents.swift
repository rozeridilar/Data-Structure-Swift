import Foundation

//Implement the Stack as a generic structure that provides the following methods:
//// add element to the top of the stack
//func push(_ element: T)
//
//// remove the top element and return it; return nil if the stack is empty
//func pop() -> T?
//
//// return the top element or nil if the stack is empty
//func peek() -> T?
//
//// return the number of elements in the Stack
//var count: Int
//
//// true if the stack is empty
//var isEmpty: Bool


struct Stack<Element> {
    var items = [Element]()
    
    mutating func push(_ item: Element) {
        items.append(item)
    }
    mutating func pop() -> Element? {
        guard items.count != 0 else {
            return nil
        }
        return items.removeLast()
    }
    mutating func peek() -> Element?{
        guard items.count != 0 else {
            return nil
        }
        return items.last
    }
}

var stackOfStrings = Stack<String>()
stackOfStrings.push("uno")
stackOfStrings.push("dos")
stackOfStrings.push("tres")
stackOfStrings.push("cuatro")
let fromTheTop = stackOfStrings.pop()
