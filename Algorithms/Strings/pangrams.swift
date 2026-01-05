import Foundation

func pangrams(s: String) -> String {
    let letters = s.lowercased().filter { $0 >= "a" && $0 <= "z" }
    return Set(letters).count == 26 ? "pangram" : "not pangram"
}

