import Foundation

//Advance Properties Challenge

var width: Float = 3.4
var height: Float = 2.1


//create a computed property of buckets of paint such that whenever I try to print bucketsOfPaint then it should be able to show me the updated number of buckets I need to buy in order to cover my wall with given widt and height
// 1 Bucket of Paint covers 1.5 meters

//Part 2: WI we had a couple of buckets we had in the house and I wanna know what is the total area of this paint can cover

var bucketOfPaint: Int {
    get{
        let area = width * height
        let roundedNumberOfBuckets = ceilf(area/1.5)
        return Int(roundedNumberOfBuckets)
    }
    set{
        let areaLeft:Float = Float(newValue)*1.5
        print ("You can use this paint for \(areaLeft) meters area")
    }
}
bucketOfPaint = 8
print(bucketOfPaint)
