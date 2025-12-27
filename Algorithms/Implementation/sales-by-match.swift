import Foundation

func sockMerchant(n: Int, ar: [Int]) -> Int {
    var dict: [Int: Int] = [:]

    // Count socks by color
    for sock in ar {
        dict[sock, default: 0] += 1
    }

    // Count pairs
    var pairs = 0
    for count in dict.values {
        pairs += count / 2
    }

    return pairs
}

