
import Foundation

func findTheSumMultiplies(_ number: Int, multiplies: [Int]) -> Int{
    var sumAr = [Int]()
    for i in 0..<number{
        for k in multiplies{
            if(i % k == 0){
               // print(i)
                sumAr.append(i)
            }
        }
        
    }
    let objectSet = Set(sumAr.map { $0})
    var count = 0
    
    for i in objectSet{
        count += i
    }
    
    return count
}

print(findTheSumMultiplies(1000, multiplies: [3,5]))
