import Foundation

// Complete the hourglassSum function below.
func hourglassSum(arr: [[Int]]) -> Int {
    
    var tmp = 0
    for i in 0..<arr.count-2{
        let k = arr[i][i] + arr[i][i+1] + arr[i][i+2]
            + arr[i+1][i+1] +
        arr[i+1][i] + arr[i+2][i] + arr[i+2][i+2]
        
        if (k > tmp){
            tmp = k
            print(tmp)
        }
    }
    return tmp
}


print(hourglassSum(arr: [[1, 1, 1, 0, 0, 0], [0, 1, 0, 0, 0, 0],[1, 1, 1, 0, 0, 0],[0, 0, 0, 0, 0, 0] ,[0, 0, 0, 0, 0, 0] ,[0, 0, 0, 0, 0, 0]]))

