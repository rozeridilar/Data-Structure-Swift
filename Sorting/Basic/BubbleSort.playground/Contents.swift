import Foundation

func bubbleSort(_ input: [Int]) -> [Int]{
    guard input.count > 1 else{
        return input
    }
    
    var result = input
    let count = result.count
    
    var isSwapped = false
    repeat{
        isSwapped = false
        for index in 1..<count{
            if result[index] < result[index-1]{
                result.swapAt(index-1, index)
                isSwapped = true
            }
        }
    }while isSwapped
    
    return result
    
}

print(bubbleSort([1,2,3,5,4]))
