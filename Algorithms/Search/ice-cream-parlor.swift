import Foundation

func icecreamParlor(m: Int, arr: [Int]) -> [Int] {
    var seen: [Int: Int] = [:]

    for (index, price) in arr.enumerated() {
        let complement = m - price

        if let foundIndex = seen[complement] {
            // Return 1-based indices
            return [foundIndex, index + 1]
        }

        // Store index as 1-based
        seen[price] = index + 1
    }

    return []
}

