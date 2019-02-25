import Foundation

func equilibrium(_ numbers: [Int]) -> [Int]?{

    guard numbers.count > 1 else{
        return nil
    }
    var indices = [Int]()
    var left = 0
    var right = 0

    var count = numbers.count
    
    for i in 1..<count{
        for k in 0..<i{
            left += numbers[k]
        }
        
        for j in i+1..<count{
            right += numbers[j]
        }
        
        if(left == right){
            indices.append(i)
        }
    }
    
    return indices.isEmpty ? nil: indices
}

print(equilibrium([-3,2,-2,1,-2]))
