import Foundation

func bonAppetit(bill: [Int], k: Int, b: Int) -> Void {
    let total = bill.reduce(0, +)
    let actualShare = (total - bill[k]) / 2

    if b == actualShare {
        print("Bon Appetit")
    } else {
        print(b - actualShare)
    }
}

