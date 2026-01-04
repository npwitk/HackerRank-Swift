import Foundation

func permutationEquation(p: [Int]) -> [Int] {
    let n = p.count
    
    // value -> index mapping (1-based)
    var position = Array(repeating: 0, count: n + 1)
    
    for i in 0..<n {
        position[p[i]] = i + 1
    }
    
    var result: [Int] = []
    
    for x in 1...n {
        let i = position[x]
        let y = position[i]
        result.append(y)
    }
    
    return result
}


