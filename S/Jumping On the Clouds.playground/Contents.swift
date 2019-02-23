import Foundation

// Complete the jumpingOnClouds function below.
func jumpingOnClouds(c: [Int]) -> Int {
    var count = 0
    var i = 0
    while i<c.count-1 {
        if(i+2 < c.count && c[i+2] == 0){
            i += 2
            count += 1
        }else{
            i += 1
            count += 1
        }
    }
    return count
}

print(jumpingOnClouds(c: [0, 0 ,1, 0, 0, 1, 0]))
