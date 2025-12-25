import Foundation

func diagonalDifference(arr: [[Int]]) -> Int {
    let dimension = arr.count
    
    var lr = 0
    var rl = 0
    
    for i in 0..<dimension {
        lr += arr[i][i]
        rl += arr[i][dimension - 1 - i]
    }
    
    return abs(lr - rl)
}

