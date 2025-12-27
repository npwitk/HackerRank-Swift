import Foundation

func getMoneySpent(keyboards: [Int], drives: [Int], b: Int) -> Int {
    let keyboardsSorted = keyboards.sorted()
    let drivesSorted = drives.sorted(by: >)

    var maxSpend = -1
    var i = 0
    var j = 0

    while i < keyboardsSorted.count && j < drivesSorted.count {
        let sum = keyboardsSorted[i] + drivesSorted[j]

        if sum > b {
            // Too expensive -> try cheaper drive
            j += 1
        } else {
            // Valid -> update max and try more expensive keyboard
            maxSpend = max(maxSpend, sum)
            i += 1
        }
    }

    return maxSpend
}

