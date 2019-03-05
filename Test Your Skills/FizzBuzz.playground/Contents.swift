import Foundation

func fizzBuzz(_ turns: Int) -> String {
    
    let fizzBuzz = "FizzBuzz"
    let fizz = "Fizz"
    let buzz = "Buzz"
    
    guard turns != 0 else {
        return "FizzBuzz"
    }
    
    var arr = Array(repeating: "1", count: turns+1)
    
    for index in 0..<arr.count{
       
            if(index % 5 == 0){
                arr[index] = buzz
            }
            else if(index % 3 == 0){
                arr[index] = fizz
            }
            else{
                arr[index] = String (index)
            }
            
            if(index % 15 == 0){
                arr[index] = fizzBuzz
            }
        
    }
    
    var str: String {
        var s = ""
        for i in 1..<arr.count {
            s += arr[i]
            if(i != arr.count - 1){
               s += ","
            }
        }
        
        return s
    }
    
    return str
}


print(fizzBuzz(20))
