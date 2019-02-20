//: **Introduction to Algorithms and Data Structures in Swift 4** - Source Code
//:
//: Get the course **[on Udemy using this discounted coupon](https://www.udemy.com/introduction-to-algorithms-in-swift/?couponCode=BESTPRICE)**
//:
//: The book version is available **[on iTunes](http://itunes.apple.com/us/book/id1345964250)** and **[Amazon](https://www.amazon.com/Introduction-Algorithms-Data-Structures-Swift-ebook/dp/B077D8MQ31)**
//:
//: _ _ _
//: ## Constant Time - O(1)
//: Demo to demonstrate constant time complexity
//:
//: - Callout(Interested in Swift programming?):
//: Check out my **[Youtube channel](https://www.youtube.com/c/swiftprogrammingtutorials)**
//: my courses on **[Udemy](https://www.udemy.com/user/karolynyisztor/)**, **[Lynda](https://www.lynda.com/Karoly-Nyisztor/9655357-1.html)** and **[Pluralsight](https://www.pluralsight.com/profile/author/karoly-nyisztor)**.
//: Website **[www.leakka.com](http://www.leakka.com)**
//: ---

import Foundation
//: Benchmark Utility
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

func startsWithZero(_ array: [Int]) -> Bool{
    guard array.count != 0 else {
        return false
    }
    return array.first == 0 ? true : false
}

print("-----------------")
print("Find the first element of the array")
print("-----------------")

var smallArray = Array<Int>(repeating: 1, count: 3)
var execTime = BenchTimer.measureBlock{
    _ = startsWithZero(smallArray)
}
print(execTime)


print("-----------------")

var mediumArray = Array<Int>(repeating: 0, count: 1000)
execTime = BenchTimer.measureBlock{
    _ = startsWithZero(mediumArray)
}
print(execTime)


print("-----------------")


var hugeArray = Array<Int>(repeating: 1, count: 1000000)
execTime = BenchTimer.measureBlock{
    _ = startsWithZero(hugeArray)
}
print(execTime)

print("-----------------")
print("Generating Dictionaries")
print("-----------------")

func generateDict(size: Int) -> Dictionary<String, Int>{
    var result = Dictionary<String,Int>()
    
    guard size > 0 else{
        return result
    }
    
    for i in 0..<size{
        let key = "\(i)"
        result[key] = i
    }
    
    return result
    
}

var smallDict = generateDict(size: 3)
execTime = BenchTimer.measureBlock {
    _ = smallDict["2"]
}

print(execTime)

print("-----------------")

var mediumDict = generateDict(size: 500)
execTime = BenchTimer.measureBlock {
    _ = mediumDict["345"]
}

print(execTime)

print("-----------------")

var hugeDict = generateDict(size: 10000)
execTime = BenchTimer.measureBlock {
    _ = hugeDict["55555"]
}

print(execTime)

