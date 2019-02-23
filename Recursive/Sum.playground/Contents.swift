import Foundation


func sum(n: UInt64) -> UInt64{
    return n <= 0 ? 0 : n + sum(n: n-1)
}

print(sum(n: 3))
