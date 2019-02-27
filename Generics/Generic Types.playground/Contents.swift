import Foundation

struct Pair<T1: Comparable,T2: Comparable>{
    var first: T1
    var second: T2
}

//let pair = Pair(first: "First", second: "Second")
//print(pair)
//
//let numberPair = Pair(first: 1, second: 2)
//print(numberPair)
//
//let stringDoublePair = Pair(first: "First", second: 2.0)
//print(stringDoublePair)
//
//let stringDatePair = Pair(first: "some first", second: Date())
//print(stringDatePair)
//
//let numbers: Set<Int> = [1, 2, 3, 4]
//print(numbers)


func winner(erica: String, bob: String)  -> String{
    
    let ericaS = Array(erica)
    
    let bobS = Array(bob)
    
    var countErica:Int = 0
    
    //let objectSet = Set(arr.map { $0})
    
    let mappedItems = ericaS.map { ($0, 1) }
    print("Mapped Items: \(mappedItems)")
    
    let counts = Dictionary(mappedItems, uniquingKeysWith: +)
    print("Counts: \(counts)")
    
    var maxValue: Int = 1
    for dic in counts{
        
                print ("KEY: \( dic.key)")
        
                print ("VALUE: \(dic.value)")
        
        if(dic.key == "E"){
            
            countErica += dic.value
            
        }
        
        if(dic.key == "H"){
            
            countErica += 5 * dic.value
            
        }
        
        if(dic.key == "M"){
            
            countErica += 3 * dic.value
            
        }
        
    }
    
    
    
    var countBob:Int = 0
    
    //let objectSet = Set(arr.map { $0})
    
    let mappedItemsB = bobS.map { ($0, 1) }
    
    let countsB = Dictionary(mappedItemsB, uniquingKeysWith: +)
    
    
    
    for dic in countsB{
        
        //        print ("KEY: \( dic.key)")
        
        //        print ("VALUE: \(dic.value)")
        
        if(dic.key == "E"){
            
            countBob += dic.value
            
        }
        
        if(dic.key == "H"){
            
            countBob += 5 * dic.value
            
        }
        
        if(dic.key == "M"){
            
            countBob += 3 * dic.value
            
        }
        
    }
    
    //    print(countBob)
    
    var count = ""
    
    if(countErica > countBob){
        
        count = "Erica"
        
    }else if(countErica<countBob){
        
        count = "Bob"
        
    }else{
        
        count = "Tie"
        
    }
    
    
    
    return count
    
}





print(winner(erica: "EHEEE",bob: "EMHHH"))
