import Foundation

func birthday(s: [Int], d: Int, m: Int) -> Int {
    var count = 0

    for i in 0...(s.count - m) {
        let segment = s[i..<i+m]
        let sum = segment.reduce(0, +)

        if sum == d {
            count += 1
        }
    }

    return count
}

