import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    var x = a
    var y = b
    while y != 0 {
        let temp = y
        y = x % y
        x = temp
    }
    return x
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return a / gcd(a, b) * b
}

func getTotalX(a: [Int], b: [Int]) -> Int {
    // Step 1: LCM of array a
    let lcmA = a.reduce(1) { lcm($0, $1) }

    // Step 2: GCD of array b
    let gcdB = b.reduce(b[0]) { gcd($0, $1) }

    // Step 3: Count valid multiples
    var count = 0
    var multiple = lcmA

    while multiple <= gcdB {
        if gcdB % multiple == 0 {
            count += 1
        }
        multiple += lcmA
    }

    return count
}

