import Foundation

func pageCount(n: Int, p: Int) -> Int {
    // Mathematics
    let fromFront = p / 2
    let fromBack = (n / 2) - (p / 2)
    return min(fromFront, fromBack)
}
