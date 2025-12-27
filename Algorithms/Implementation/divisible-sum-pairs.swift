import Foundation

// O(n^2)
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

// O(n)
func divisibleSumPairs(n: Int, ar: [Int], k: Int) -> Int {
    var freq = Array(repeating: 0, count: k)
    var count = 0

    for num in ar {
        let r = num % k
        let complement = (k - r) % k

        count += freq[complement]
        freq[r] += 1
    }

    return count
}
