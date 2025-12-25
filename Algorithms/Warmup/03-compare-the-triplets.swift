import Foundation

func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var result: [Int] = [0, 0]
    
    for i in 0...2 {
        if a[i] > b[i] {
            result[0] += 1
        } else if a[i] < b[i] {
            result[1] += 1
        } else {
            continue
        }
    }
    return result
}
