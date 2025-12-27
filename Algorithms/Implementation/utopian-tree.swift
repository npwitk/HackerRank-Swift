import Foundation

func utopianTree(n: Int) -> Int {
    if n == 0 {
        return 1
    }

    var height = 1

    for cycle in 1...n {
        if cycle % 2 == 1 {
            height *= 2
        } else {
            height += 1
        }
    }

    return height
}

