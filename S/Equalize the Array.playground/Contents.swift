import Foundation
//9
//10 20 20 10 10 30 50 10 20
// Complete the sockMerchant function below.

//Find the duplicates in the array
func equalizeArray(arr: [Int]) -> Int {
    var count:Int = 0
    var n = arr.count
    if n == 0{
        return 0
    }
    //let objectSet = Set(arr.map { $0})
    let mappedItems = arr.map { ($0, 1) }
    let counts = Dictionary(mappedItems, uniquingKeysWith: +)
    var maxValue: Int = 1
    for dic in counts{
        print ("KEY: \( dic.key)")
        print ("VALUE: \(dic.value)")
        if(dic.value>1){
            if(dic.value > maxValue){
                maxValue = dic.value
            }
            var val = dic.value
            count = count + Int(val/2)
        }
    }
    
    print(n - maxValue)
    count = n - maxValue
    return count
}


equalizeArray(arr: [3, 3, 2, 1, 3])

//func ss(n: Int, ar: [Int]) -> Void{
//    let objectSet = Set(ar.map { $0})
//
//    print("in object set")
//    print(objectSet)
//    print("out object set")
//}
//
//print(equalizeArray(arr: [10, 20, 20, 10, 10, 30, 50, 10, 20]))
//func sockMerchant(n: Int, ar: [Int]) -> Int {
//    var count:Int = 0
//    if n == 0{
//        return 0
//    }
//    if let tmp:Int = ar[0]{
//        var sortedAr = ar.sorted(by:<)
//        var v = sortedAr.count
//        for index in 0..<v{
//            if index%2 == 0 && index+1 < v{
//                if sortedAr[index] == sortedAr[index+1]{
//                    count = count+1
//                }
//            }
//        }
//
//    }
//    return count
//}

