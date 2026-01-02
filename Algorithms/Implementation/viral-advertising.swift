import Foundation

func viralAdvertising(n: Int) -> Int {
    var shared = 5
    var cumulativeLikes = 0

    for _ in 1...n {
        let liked = shared / 2
        cumulativeLikes += liked
        shared = liked * 3
    }

    return cumulativeLikes
}
