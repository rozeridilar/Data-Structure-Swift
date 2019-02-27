import Foundation

func pairMatching(_ array: [Int],target: Int) -> (Int,Int)? {
    
    guard array.count > 1 else{
        return nil
    }
    
    var diffs = Dictionary<Int,Int>()
    
    for i in 0..<array.count{
        let left = array[i]
        print("left: \(left)")
        
        let right = target - left
        print("right: \(right)")
        if let foundIndex = diffs[right]{
            print("foundIndex: \(foundIndex)")
            return (i,foundIndex)
        }else{
            diffs[left] = i
            print("diffs[left]: \(diffs[left])")
        }
       
        print("\(left) \(diffs[left])")
    }
    
    return nil
}

print(pairMatching([1,2,2,2,3,4], target: 4))
