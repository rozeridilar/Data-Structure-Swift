import Foundation

// Complete the countingValleys function below.
func countingValleys(n: Int, s: String) -> Int {
    
//    let mappedArr = s.map{($0,1)}
//    
//    let dict = Dictionary(mappedArr, uniquingKeysWith: +)
    
    var sum = 0
    var count = 0
    
    let arr = s.map { String($0) }
  
    
    for i in 0..<arr.count {
        let key = arr[i]
        if key == "U"{
            sum += 1
        }else{
            sum -= 1
        }
        print("sum: \(sum)")
        if(i != s.count-1){
        count = sum == 0 ? count + 1 : count
        }
        print("count \(count)")
    }
    
    return count
    
}

print(countingValleys(n: 10, s: "DUDDDUUDUU"))



