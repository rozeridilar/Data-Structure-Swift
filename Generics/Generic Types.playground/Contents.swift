import Foundation

struct Pair<T1: Comparable,T2: Comparable>{
    var first: T1
    var second: T2
}

let pair = Pair(first: "First", second: "Second")
print(pair)

let numberPair = Pair(first: 1, second: 2)
print(numberPair)

let stringDoublePair = Pair(first: "First", second: 2.0)
print(stringDoublePair)
