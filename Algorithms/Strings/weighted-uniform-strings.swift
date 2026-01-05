import Foundation

func weightedUniformStrings(s: String, queries: [Int]) -> [String] {
    var weights = Set<Int>()

    let chars = Array(s)
    var currentChar: Character? = nil
    var currentCount = 0

    for ch in chars {
        let charWeight = Int(ch.asciiValue! - Character("a").asciiValue! + 1)

        if ch == currentChar {
            currentCount += 1
        } else {
            currentChar = ch
            currentCount = 1
        }

        weights.insert(charWeight * currentCount)
    }

    return queries.map { weights.contains($0) ? "Yes" : "No" }
}


