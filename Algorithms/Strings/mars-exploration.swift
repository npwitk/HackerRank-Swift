import Foundation

func marsExploration(s: String) -> Int {
    let expected = Array("SOS")
    let chars = Array(s)
    var changed = 0

    for i in 0..<chars.count {
        if chars[i] != expected[i % 3] {
            changed += 1
        }
    }

    return changed
}


