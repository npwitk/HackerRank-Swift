import Foundation

func camelcase(s: String) -> Int {
    let newArray = Array(s) 
    return newArray.filter { $0.isUppercase }.count + 1
}

func camelcaseBetter(s: String) -> Int {
    1 + s.filter { $0.isUppercase }.count
}

