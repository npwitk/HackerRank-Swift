import Foundation

func rotateLeft(d: Int, arr: [Int]) -> [Int] {
    let n = arr.count
    let shift = d % n
    
    let left = arr[shift..<n]
    let right = arr[0..<shift]
    return Array(left + right)
}

