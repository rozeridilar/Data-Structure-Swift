import Foundation

class Node{
    
    var next: Node?
    var value: String
    
    init(_ value: String) {
        self.value = value
    }
    
}

let node1 = Node("Node1")
let node2 = Node("Node2")
let node3 = Node("Node3")

node1.next = node2
node2.next = node3
node3.next = nil


func parseNodes(_ node: Node?){
    guard let validNode = node else{
        return
    }
    
    print(validNode.value)
    parseNodes(validNode.next)
}

print(parseNodes(node1))
