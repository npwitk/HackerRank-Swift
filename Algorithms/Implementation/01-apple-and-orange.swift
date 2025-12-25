import Foundation

func countApplesAndOranges(
    s: Int, t: Int,
    a: Int, b: Int,
    apples: [Int], oranges: [Int]
) {
    let applesIn = apples
        .map { $0 + a }
        .filter { (s...t).contains($0) }
        .count

    let orangesIn = oranges
        .map { $0 + b }
        .filter { (s...t).contains($0) }
        .count

    print(applesIn)
    print(orangesIn)
}

