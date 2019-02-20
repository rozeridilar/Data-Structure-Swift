import Foundation
import QuartzCore

public class BenchTimer{
    public static func measureBlock(closure: () -> Void) -> CFTimeInterval{
        let runCount = 10
        var executionTimes = Array<Double> (repeating: 0.0, count: runCount)
        for i in 0..<runCount{
            let startTime = CACurrentMediaTime()
            closure()
            let endTime = CACurrentMediaTime()
            let execTime = endTime - startTime
            executionTimes[i] = execTime
        }
        
        return (executionTimes.reduce(0, +)) / Double(runCount)
    }
}


func generateRandomArray(size: Int, maxValue: UInt32) -> Array<Int>{
    guard size > 0 else{
        return [Int]()
    }
    
    var result = [Int](repeating: 0, count: size)
    for i in 0..<size{
        result[i] = Int(arc4random_uniform(maxValue))
    }
    return result
}

func sum(_ array: [Int]) -> Int{
    //return array.reduce(0, +)
    var result = 0
    for i in 0..<array.count{
        result += array[i]
    }
    return result
}

//Array Sum
let arr100 = generateRandomArray(size: 100, maxValue: UInt32.max)
var execTime = BenchTimer.measureBlock {
    sum(arr100)
}

print("arr100  \(execTime)")

print("------------")

let arr1000 = generateRandomArray(size: 1000, maxValue: UInt32.max)
execTime = BenchTimer.measureBlock {
    sum(arr1000)
}
print("arr1000  \(execTime)")

print("------------")

let arr100000 = generateRandomArray(size: 100000, maxValue: UInt32.max)
execTime = BenchTimer.measureBlock {
    sum(arr100000)
}
print("arr100000  \(execTime)")


//Count Odd/Even

func countOddEven(_ array: [Int]) -> (even: UInt, odd: UInt){
    var even: UInt = 0
    var odd: UInt = 0
    
    for index in array{
        if index%2==0 {
            even += 1
        }else{
            odd += 1
        }
    }
        
    return (even,odd)
}


execTime = BenchTimer.measureBlock {
    countOddEven(arr100)
}
print("Count arr100  \(execTime)")

execTime = BenchTimer.measureBlock {
    countOddEven(arr1000)
}
print("Count arr1000  \(execTime)")

execTime = BenchTimer.measureBlock {
    countOddEven(arr100000)
}
print("Count arr100000  \(execTime)")
