import Foundation

func beautifulDays(i: Int, j: Int, k: Int) -> Int {
    var count = 0

    for day in i...j {
        if abs(day - reverse(day)) % k == 0 {
            count += 1
        }
    }

    return count
}


//extension Int { SLOW
//    var reversed: Int {
//        Int(String(String(self).reversed()))!
//    }
//}


func reverse(_ n: Int) -> Int {
    var n = n
    var rev = 0

    while n > 0 {
        rev = rev * 10 + n % 10
        n /= 10
    }

    return rev
}

