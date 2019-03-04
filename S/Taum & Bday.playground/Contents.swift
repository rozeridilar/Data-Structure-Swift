import Foundation

// Complete the taumBday function below.
func taumBday(b: Int, w: Int, bc: Int, wc: Int, z: Int) -> Int {
    
    if(bc == wc && wc == z) || (z > bc && z > wc){
        return (b * bc) + (w * wc)
    }
    
    if(bc > wc + z){
        return (w * wc) + (b * (wc + z))
    }
    
    if(wc > bc + z){
        return (b * bc) + (w * (bc + z))
    }
    else{
        return (b * bc) + (w * wc)
    }
}



print(taumBday(b: 10, w: 10, bc: 1, wc: 1, z: 1))
print(taumBday(b: 5, w: 9, bc: 2, wc: 3, z: 4))
print(taumBday(b: 3, w: 6, bc: 9, wc: 1, z: 1))
print(taumBday(b: 7, w: 7, bc: 4, wc: 2, z: 1))
print(taumBday(b: 3, w: 3, bc: 1, wc: 9, z: 2))
print(taumBday(b: 3, w: 5, bc: 3, wc: 4, z: 1))
