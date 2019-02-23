import Foundation

//Find the last number after array
//with while loop
func createFibonnacciArrWithLoop(_ n: Int) -> [Int] {
    var ar = [Int]()
    var i = 0
    while i<n{
        if(i > 2){
            ar.append(ar[i-2] + ar[i-1])
        }else if(i==0){
            ar.append(0)
        }else if(i==1){
            ar.append(1)
        }else if(i==2){
            ar.append(1)
        }
        i += 1
    }
    
    return ar
}

//print(fibonnacci([0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811]))

print(createFibonnacciArrWithLoop(10))



