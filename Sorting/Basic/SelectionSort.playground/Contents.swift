import Foundation

//It starts by the finding the smallest item and exchanging it with the first one. Then, it finds the second smalest item then exchanges it with the second item. List goes on like this until the entire sequence s sorted.

func selectionSort(_ input:[Int]) -> [Int]{
    guard input.count > 1 else{
        return input
    }
    
    var result = input
    
    for index in 0..<(result.count - 1){
        var indexLowest = index
        
        for forwardIndex in (index + 1)..<result.count{
            if result[forwardIndex] < result[indexLowest]{
                indexLowest = forwardIndex
            }
        }
        
        if index != indexLowest{
            result.swapAt(index, indexLowest)
        }
    }
    
    return result
}

print(selectionSort([1,2,3,5,4]))
