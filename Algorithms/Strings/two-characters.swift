import Foundation

func alternate(s: String) -> Int {
    let chars = Array(s)
    let uniqueChars = Array(Set(chars))
    var maxLength = 0

    // Try all pairs of characters
    for i in 0..<uniqueChars.count {
        for j in i+1..<uniqueChars.count {
            let c1 = uniqueChars[i]
            let c2 = uniqueChars[j]

            // Filter string to only c1 and c2
            let filtered = chars.filter { $0 == c1 || $0 == c2 }

            // Check if alternating
            if isAlternating(filtered) {
                maxLength = max(maxLength, filtered.count)
            }
        }
    }

    return maxLength
}

func isAlternating(_ arr: [Character]) -> Bool {
    for i in 1..<arr.count {
        if arr[i] == arr[i - 1] {
            return false
        }
    }
    return arr.count >= 2
}

