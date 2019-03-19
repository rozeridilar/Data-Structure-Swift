import Foundation
//from: https://github.com/twostraws/whats-new-in-swift-4-2/blob/master/Whats-New-In-Swift-4-2.playground/Pages/Derived%20collections%20of%20enum%20cases.xcplaygroundpage/Contents.swift
//follow Paul Hudson for more with twostraws name in github

/** ENUM CASES **/
/*:
 - important: You need to add `CaseIterable` to the original declaration of your enum rather than an extension in order for the `allCases` array to be synthesized. This means you can’t use extensions to retroactively make existing enums conform to the protocol.
*/
//You have to conform CaseIterable protocol on your enum to get all the cases.
enum Pasta: CaseIterable{
    case caneloni, fusili, linguine, tagliatelle
}

for shape in Pasta.allCases{
    print(shape)
}


/** WARNING AND ERROR DIAGNOSTIC DIRECTIVES **/
//This is a good way to remind yourself something as a warning or as an error. Or if you are on a team it is good way to let teammates know.(NO MORE TODO COMMENTS)
func encrypt(_ password:String) -> String{
  //  #warning("This is a terrible method of encryption")
    return password
}

//var apiKey: String{
////    #error("Please enter your api key here then delete this line")
//    return "Some Api Key"
//}

/** Random number generation and shuffling **/
/*:
[SE-0202](https://github.com/apple/swift-evolution/blob/master/proposals/0202-random-unification.md) introduces a new random API that’s native to Swift. This means you can for the most part stop using `arc4random_uniform()` and GameplayKit to get randomness, and instead rely on a cryptographically secure randomizer that’s baked right into the core of the language.
You can generate random numbers by calling the `random()` method on whatever numeric type you want, providing the range you want to work with. For example, this generates a random number in the range 1 through 4, inclusive on both sides:
*/
let randomInt = Int.random(in: 1..<5)
/*:
 Similar methods exist for `Float`, `Double`, and other numeric types:
 */
let randomFloat = Float.random(in: 1..<10)
let randomDouble = Double.random(in: 1...100)
/*:
 There’s also one for booleans, generating either true or false randomly:
 */
let randomBool = Bool.random()
/*:
 Checking a random boolean is effectively the same as checking `Int.random(in: 0...1) == 1`, but it expresses your intent more clearly.
 SE-0202 also includes support for shuffling arrays using new `shuffle()` and `shuffled()` methods depending on whether you want in-place shuffling or not. For example:
 */
var albums = ["Red", "1989", "Reputation"]

// shuffle in place
albums.shuffle()

// get a shuffled array back
let shuffled = albums.shuffled()
/*:
 It also adds a new `randomElement()` method to arrays, which returns one random element from the array if it isn’t empty, or nil otherwise:
 */
if let random = albums.randomElement() {
print("The random album is \(random).")
}

/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 ## In-place collection element removal
 [SE-0197](https://github.com/apple/swift-evolution/blob/master/proposals/0197-remove-where.md) introduces a new `removeAll(where:)` method that performs a high-performance, in-place filter for collections. You give it a closure condition to run, and it will strip out all objects that match the condition.
 For example, if you have a collection of names and want to remove people called “Terry”, you’d use this:
 */
var pythons = ["John", "Michael", "Graham", "Terry", "Eric", "Terry"]
pythons.removeAll { $0.hasPrefix("Terry") }
print(pythons)
/*:
 Now, you might very well think that you could accomplish that by using `filter()` like this:
 */
pythons = pythons.filter { !$0.hasPrefix("Terry") }
/*:
 However, that doesn’t use memory very efficiently, it specifies what you *don’t* want rather than what you *want*, and more advanced in-place solutions come with a range of complexities that are off-putting to novices. Ben Cohen, the author of SE-0197, gave a talk at [dotSwift 2018](https://www.dotconferences.com/2018/01/ben-cohen-extending-the-standard-library) where he discussed the implementation of this proposal in more detail – if you’re keen to learn why it’s so efficient, you should start there!
 &nbsp;
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
