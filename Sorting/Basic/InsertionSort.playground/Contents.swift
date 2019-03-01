import Foundation

func insertionSort(_ input:[Int]) -> [Int]{
    var result = input
    let count = result.count
    
    for sortedIndex in 0..<count{
        var backIndex = sortedIndex
        
        while backIndex > 0 && result[backIndex] < result[backIndex - 1] {
            result.swapAt(backIndex-1, backIndex)
            backIndex -= 1
        }
    }
    return result
}

print(insertionSort([1,2,3,5,4]))

