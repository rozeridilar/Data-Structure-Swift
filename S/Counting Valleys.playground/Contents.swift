import Foundation

// Complete the countingValleys function below.
func countingValleys(n: Int, s: String) -> Int {
    
    let mappedArr = s.map{($0,1)}
    
    let dict = Dictionary(mappedArr, uniquingKeysWith: +)
    
    var sum = 0
    
    for (key,value) in dict{
        if key == "U"{
            print(key)
            print(value)
            sum += -1 * value
        }else{
            print(key)
            print(value)
            sum += 1 * value
        }
    }
    
    return sum == 0 ? 1 : sum
    
}

print(countingValleys(n: 12, s: "DDUUDDUDUUUD"))




