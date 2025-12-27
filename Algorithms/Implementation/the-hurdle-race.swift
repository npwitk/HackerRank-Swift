import Foundation

func hurdleRace(k: Int, height: [Int]) -> Int {
    let maxHeightHurdle = height.max() ?? 0
    
    if k >= maxHeightHurdle {
        return 0
    } else {
        return maxHeightHurdle - k
    }
}

