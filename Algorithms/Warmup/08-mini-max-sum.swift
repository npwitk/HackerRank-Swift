import Foundation

func miniMaxSum(arr: [Int]) -> Void {
    let sortedArray = arr.sorted()
    
    let smallSum = Array(sortedArray[0...3]).reduce(0, +)
    let largeSum = Array(sortedArray[1...4]).reduce(0, +)
    
    print("\(smallSum) \(largeSum)")
}
