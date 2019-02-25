import Foundation

func isEqual<T: Equatable> (left: T, right: T) -> Bool{
    return left == right
}

print(isEqual(left: "dd", right: "dd"))
