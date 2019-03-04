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
   "name":"Ahmed",
   "age":27
}
]
""".data(using: .utf8)!

struct Cat: Codable{
    let name: String
    let age: Int
    
    private enum CodingKeys: String,CodingKey{
        case name = "cat_name"
        case age
    }
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
        
        if let cats = owner.cats, cats.count > 0 {
            for cat in cats{
                print("cat name: \(cat)")
            }
        }else{
            print("\(owner.name) doesn't have any cats.")
        }
    }
    
}catch{
    print("Failed to decode the cat owners with error \(error.localizedDescription)")
}


/* Encode Array of Dictionaries with possible nesting */

let catOwners = [Owner(name: "Rozeri", age: 25, cats: [Cat(name: "Rinde", age: 5), Cat(name: "Delal", age: 2)]), Owner(name: "Ahmed", age: 27, cats: nil)]

let catEncoder = JSONEncoder()
catEncoder.outputFormatting = .prettyPrinted

do{
    let jsonData = try catEncoder.encode(catOwners)
    if let ownersString = String(data: jsonData, encoding: .utf8){
        print(ownersString)
    }
}catch{
    print("Failed to encode the cat owner with error \(error.localizedDescription)")

}
