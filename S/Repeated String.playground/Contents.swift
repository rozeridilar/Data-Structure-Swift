//
//  Repeated String.swift
//
//
//  Created by Kızılay on 21.02.2019.
//
import Foundation

// Complete the repeatedString function below.
func repeatedString(s: String, n: Int) -> Int {
    if(s.count == 1){
        if(s.first == "a"){
            return n
        }
        else{
            return 0
        }
    }
   
    var stringToSearch = String(repeating: s, count: n)
    let index = stringToSearch.index(stringToSearch.startIndex, offsetBy: n)
    let myWholeSubstring = stringToSearch[..<index]
    print(myWholeSubstring.count)
    print(stringToSearch.count)
    var newS = s
    for i in 0..<n{
        if(newS.count < n){
//            print("if count \(s.count)")
            newS = newS+newS
        }else{
//            print("else count \(s.count)")
            let index = newS.index(newS.startIndex, offsetBy: n)
            newS = String(newS[..<index])
        }
        if(s.count == n){
//            print("equals count \(s.count)")
            break
        }
    }
    
    return  newS.reduce(0) {
        $1 == "a" ? $0 + 1 : $0
    }
}

print(repeatedString(s: "abcd", n: 10))
