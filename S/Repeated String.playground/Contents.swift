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
        return n
    }
   
    var stringToSearch = String(repeating: s, count: n)
    let index = stringToSearch.index(stringToSearch.startIndex, offsetBy: n)
    let myWholeSubstring = stringToSearch[..<index] // Hello
    return  myWholeSubstring.reduce(0) {
        $1 == "a" ? $0 + 1 : $0
    }
}

print(repeatedString(s: "abcd", n: 10))
