import Foundation

//09:42 am

// Complete the checkMagazine function below.
func checkMagazine(magazine: [String], note: [String]) -> Void {
    var result = ""
    var mag = magazine
    let mappedItems = note.map{($0,1)}
    let counts = Dictionary(mappedItems, uniquingKeysWith: +)
    for dic in counts{
        if !magazine.contains(dic.key){
            print("No")
            return
        }
        if dic.value > 1 {
            for i in 0..<dic.value{
                let firstCount = mag.count
                mag = mag.filter { $0 != dic.key}
                let lastCount = mag.count
                if firstCount - lastCount != dic.value{
                    result = "No"
                    print(result)
                    return
                }
            }
        }else{
            //print(dic.key)
            mag = mag.filter{($0 != dic.key)}
            // print(mag)
        }
        
    }
   
     print ("\(mag.count >= 0 ? "Yes" : "No")")
}
print (checkMagazine(magazine: ["ive", "got","a", "lovely", "bunch", "of","coconuts"], note: ["Ive", "got","some","coconuts"]))
