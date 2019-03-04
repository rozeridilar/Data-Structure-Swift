import UIKit

/* Decode Array of Dictionaries with possible nesting */

let catOwnerJsonData = """
[
{
   "name":"Rozeri",
   "age":25,
   "cats":[
      {
         "cat_name":"Rinde",
         "age":5
      },
      {
         "cat_name":"Delal",
         "age":3
      }
   ]
},
{
   "name":"Some Other Cat Owner",
   "age":10
}
]
""".data(using: .utf8)!

struct Cat: Codable{
    let cat_name: String
    let age: Int
}

struct Owner: Codable{
    let name: String
    let age: Int
    let cats: [Cat]?
}

let catOwnerDecoder = JSONDecoder()

do{
    let catOwners = try catOwnerDecoder.decode([Owner].self, from: catOwnerJsonData)

    for owner in catOwners{
        print("The owner name is: \(owner.name)")
    }
    
}catch{
    print("Failed to decode the cat owners with error \(error.localizedDescription)")
}
