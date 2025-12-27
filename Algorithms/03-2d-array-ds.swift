import Foundation

func hourglassSum(arr: [[Int]]) -> Int {
    var maxSum: Int? = nil

    for i in 0...3 {
        for j in 0...3 {
            let sum =
                arr[i][j] + arr[i][j+1] + arr[i][j+2] +
                            arr[i+1][j+1] +
                arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2]

            if maxSum == nil || sum > maxSum! {
                maxSum = sum
            }
        }
    }

    return maxSum!
}
