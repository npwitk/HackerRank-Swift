import Foundation

func minimumNumber(n: Int, password: String) -> Int {
    let numbers = "0123456789"
    let lowerCase = "abcdefghijklmnopqrstuvwxyz"
    let upperCase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    let specialCharacters = "!@#$%^&*()-+"
    
    var hasNumber = false
    var hasLower = false
    var hasUpper = false
    var hasSpecial = false
    
    for ch in password {
        if numbers.contains(ch) {
            hasNumber = true
        } else if lowerCase.contains(ch) {
            hasLower = true
        } else if upperCase.contains(ch) {
            hasUpper = true
        } else if specialCharacters.contains(ch) {
            hasSpecial = true
        }
    }
    
    var missingTypes = 0
    if !hasNumber { missingTypes += 1 }
    if !hasLower { missingTypes += 1 }
    if !hasUpper { missingTypes += 1 }
    if !hasSpecial { missingTypes += 1 }
    
    return max(missingTypes, 6 - n)
}

