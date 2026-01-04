import Foundation

func findDigits(n: Int) -> Int {
    let digits = String(n).compactMap { Int(String($0)) }
    
    var count = 0
    
    for d in digits {
        if d != 0 && n % d == 0 {
            count += 1
        }
    }
    
    return count
}

