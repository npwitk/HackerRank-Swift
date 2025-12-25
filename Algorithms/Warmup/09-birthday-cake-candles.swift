import Foundation

func birthdayCakeCandles(candles: [Int]) -> Int {
    
    let maxHeight = candles.max() ?? 0
    return candles.filter { $0 == maxHeight }.count
}

