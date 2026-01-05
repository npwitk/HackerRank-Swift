import Foundation

func caesarCipher(s: String, k: Int) -> String {
    let shift = UInt8(k % 26)
    var result = ""

    for ch in s {
        guard let ascii = ch.asciiValue else {
            result.append(ch)
            continue
        }

        // Lowercase a-z
        if ascii >= 97 && ascii <= 122 {
            let shifted = (ascii - 97 + shift) % 26 + 97
            result.append(Character(UnicodeScalar(shifted)))

        // Uppercase A-Z
        } else if ascii >= 65 && ascii <= 90 {
            let shifted = (ascii - 65 + shift) % 26 + 65
            result.append(Character(UnicodeScalar(shifted)))

        // Non-alphabet characters
        } else {
            result.append(ch)
        }
    }

    return result
}
