
//If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

//Find the sum of all the multiples of 3 or 5 below 1000.

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
