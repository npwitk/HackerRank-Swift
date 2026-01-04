import Foundation

func taumBday(b: Int, w: Int, bc: Int, wc: Int, z: Int) -> Int {
    let blackCost = min(bc, wc + z)
    let whiteCost = min(wc, bc + z)
    
    return b * blackCost + w * whiteCost
}

