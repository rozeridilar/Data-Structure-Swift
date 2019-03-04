import Foundation


// Complete the rotLeft function below.
func rotLeft(a: [Int], d: Int) -> [Int] {
    
    guard d != 0 else {
        return a
    }
    
    let count = a.count
    let rightCount = count - d
    var tmp = a
    for index in 0..<count{
       
        if(index - rightCount > 0 && index - rightCount < count){
            tmp[index] = a[index - rightCount]
        }else if (count - rightCount + index < count){
           
            tmp[index] = a[count - rightCount + index ]
        }else{
             print("index: \(count - rightCount + index)")
            tmp[rightCount] = a[0]
        }
    }
    return tmp
}


print(rotLeft(a: [1, 2, 3, 4, 5], d: 4))
