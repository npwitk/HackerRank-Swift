import Foundation

func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    // Write your code here
    // We do math here, haha!!
    if v1 == v2 {
        return x1 == x2 ? "YES" : "NO"
    }

    let numerator = x2 - x1
    let denominator = v1 - v2

    // n must be a non-negative integer
    if denominator != 0 &&
       numerator % denominator == 0 &&
       numerator / denominator >= 0 {
        return "YES"
    }

    return "NO"
}