import Foundation


func factorial(n: UInt64) -> UInt64{
    return n < 2 ? 1 : n * factorial(n: n-1)
}

print(factorial(n: 20))
