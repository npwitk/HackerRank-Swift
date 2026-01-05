import Foundation

func hackerrankInString(s: String) -> String {
    let target = Array("hackerrank")
    var j = 0

    for ch in s {
        if j < target.count && ch == target[j] {
            j += 1
        }
    }

    return j == target.count ? "YES" : "NO"
}


