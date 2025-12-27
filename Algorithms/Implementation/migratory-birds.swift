import Foundation

func migratoryBirds(arr: [Int]) -> Int {
    var count = Array(repeating: 0, count: 6)

    for bird in arr {
        count[bird] += 1
    }

    var maxCount = 0
    var result = 1

    for i in 1...5 {
        if count[i] > maxCount {
            maxCount = count[i]
            result = i
        }
    }

    return result
}