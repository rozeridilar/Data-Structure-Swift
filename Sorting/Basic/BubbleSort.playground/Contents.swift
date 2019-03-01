import Foundation

func bubbleSort(_ input: [Int]) -> [Int]{
    guard input.count > 1 else{
        return input
    }
    
    var result = input
    var count = result.count
    
    var isSwapped = false
    repeat{
        isSwapped = false
        for index in 1..<count{
            if resul[index] < result[index-1]{
                swap(&result[index-1], &result[index])
                isSwapped = true
            }
        }
    }while isSwapped
    
    return result
    
}
