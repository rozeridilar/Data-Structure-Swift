import Foundation


//typealias

//brute-force approach
//linear time complexity
//O(n)
func sum (_ n:UInt) -> UInt{
    var result: UInt = 0
    
    for i in 1...n{
        result += i
    }
    
    return result
}

//optimized in Constant Time
//O(1)
func sumOptimized(_ n: UInt) -> UInt{
    return n * (n+1) / 2
}
