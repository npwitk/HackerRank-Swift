import Foundation

func jumpingOnClouds(c: [Int], k: Int) -> Int {
    let n = c.count
    var energy = 100
    var position = 0
    
    repeat {
        position = (position + k) % n
        energy -= 1
        
        if c[position] == 1 {
            energy -= 2
        }
        
    } while position != 0
    
    return energy
}