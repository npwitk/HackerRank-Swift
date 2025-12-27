import Foundation

func angryProfessor(k: Int, a: [Int]) -> String {
    let onTimeCount = a.filter { $0 <= 0 }.count
    
    if onTimeCount < k {
        return "YES"
    } else {
        return "NO"
    }
}

