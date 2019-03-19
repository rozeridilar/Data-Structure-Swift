import Foundation
//learned and practised from: https://github.com/twostraws/whats-new-in-swift-4-2/blob/master/Whats-New-In-Swift-4-2.playground/Pages/Derived%20collections%20of%20enum%20cases.xcplaygroundpage/Contents.swift
//follow Paul Hudson for more with twostraws name in github


//You have to conform CaseIterable protocol on your enum to get all the cases.
enum Pasta: CaseIterable{
    case caneloni, fusili, linguine, tagliatelle
}

for shape in Pasta.allCases{
    print(shape)
}
