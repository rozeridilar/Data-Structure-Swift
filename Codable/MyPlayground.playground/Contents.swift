import UIKit

/* Decode a Single Dictionary */

let singleDictJSON = """
{
    "foodName":"Banana",
    "calories":100
}
""".data(using: .utf8)!

struct Food: Codable{
    let foodName: String
    let calories: UInt
    
    init(foodName: String, calories: UInt) {
        self.foodName = foodName
        self.calories = calories
    }
}

let foodDecoder = JSONDecoder()

do{
    let foodResult = try foodDecoder.decode(Food.self, from: singleDictJSON)
    print(foodResult.foodName)
    print(foodResult.calories)
}catch {
    print("Failed to decode the food with error \(error.localizedDescription)")
}

///* Encode a Food Object -- Generate JSON from a model */

let apple = Food(foodName: "Apple", calories: 70)

let foodEncoder = JSONEncoder()
foodEncoder.outputFormatting = .prettyPrinted

do{
    let jsonData = try foodEncoder.encode(apple)
    if let jsonString = String(data: jsonData, encoding: .utf8){
        print(jsonString)
    }
}catch {
    print("Failed to encode the food with error \(error.localizedDescription)")
}
