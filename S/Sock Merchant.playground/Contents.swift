import Foundation
//9
//10 20 20 10 10 30 50 10 20
// Complete the sockMerchant function below.

//Find the duplicates in the array
func sockMerchant(n: Int, ar: [Int]) -> Int {
    var count:Int = 0
    if n == 0{
        return 0
    }
    
    let mappedItems = ar.map { ($0, 1) }
    
    let counts = Dictionary(mappedItems, uniquingKeysWith: +)
    
    for dic in counts{
        if(dic.value>1){
         
            var val = dic.value
            count = count + Int(val/2)
        }
    }
    
    return count
}


print(sockMerchant(n: 9, ar: [10, 20, 20, 10, 10, 30, 50, 10, 20]))



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
