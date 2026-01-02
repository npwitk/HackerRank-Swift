import Foundation

func circularArrayRotation(a: [Int], k: Int, queries: [Int]) -> [Int] {
    let n = a.count
    let k = k % n
    
    return queries.map { q in
        let originalIndex = (q - k + n) % n
        return a[originalIndex]
    }
}