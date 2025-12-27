import Foundation

func dayOfProgrammer(year: Int) -> String {
    // Special transition year
    if year == 1918 {
        return "26.09.1918"
    }

    let isLeap: Bool

    if year < 1918 {
        // Julian calendar
        isLeap = year % 4 == 0
    } else {
        // Gregorian calendar
        isLeap = (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
    }

    let day = isLeap ? 12 : 13
    return String(format: "%02d.09.%d", day, year)
}


