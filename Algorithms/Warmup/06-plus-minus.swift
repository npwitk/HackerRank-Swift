import Foundation

func plusMinus(arr: [Int]) -> Void {
    let positive = arr.filter { $0 > 0 }.count
    let negative = arr.filter { $0 < 0 }.count
    let zeros = arr.filter { $0 == 0 }.count

    let total = Double(arr.count)

    print(Double(positive) / total)
    print(Double(negative) / total)
    print(Double(zeros) / total)
}

