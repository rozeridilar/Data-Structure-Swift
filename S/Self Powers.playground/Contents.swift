import Foundation

typeAlias BigInt = _BigInt<UInt>

func findRes(_ number: BigInt){
    var sum:BigInt = 0
    for index in 1..<number+1 {
        sum +=  BigInt(pow(Double(index), Double(index)))
    }
    print(sum)
}

//findRes(1000)
