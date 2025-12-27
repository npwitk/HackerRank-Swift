import Foundation

func countingValleys(steps: Int, path: String) -> Int {
    var altitude = 0
    var valleys = 0

    for step in path {
        if step == "U" {
            altitude += 1
            if altitude == 0 {
                valleys += 1
            }
        } else {
            altitude -= 1
        }
    }

    return valleys
}

