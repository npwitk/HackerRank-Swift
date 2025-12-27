import Foundation

func findPoint(px: Int, py: Int, qx: Int, qy: Int) -> [Int] {
    let rx = 2 * qx - px
    let ry = 2 * qy - py
    return [rx, ry]
}

