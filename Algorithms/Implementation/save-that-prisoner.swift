import Foundation

func saveThePrisoner(n: Int, m: Int, s: Int) -> Int {
    return ((s - 1 + m - 1) % n) + 1
}

