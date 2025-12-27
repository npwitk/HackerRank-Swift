import Foundation

func catAndMouse(x: Int, y: Int, z: Int) -> String {
    let aUnitAway = abs(z - x)
    let bUnitAway = abs(z - y)
    
    if aUnitAway < bUnitAway {
        return "Cat A"
    } else if aUnitAway > bUnitAway {
        return "Cat B"
    } else {
        return "Mouse C"
    }
}

