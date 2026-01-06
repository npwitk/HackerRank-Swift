import Foundation

func funnyString(s: String) -> String {
    let original = Array(s.unicodeScalars)
    let reversed = Array(s.unicodeScalars.reversed())

    let n = original.count

    for i in 1..<n {
        let diff1 = abs(Int(original[i].value) - Int(original[i-1].value))
        let diff2 = abs(Int(reversed[i].value) - Int(reversed[i-1].value))

        if diff1 != diff2 {
            return "Not Funny"
        }
    }

    return "Funny"
}
