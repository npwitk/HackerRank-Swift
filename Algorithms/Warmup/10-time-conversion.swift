import Foundation

func timeConversion(s: String) -> String {
    let ampm = s.suffix(2) // "AM" or "PM"
    let time = s.prefix(8) // "hh:mm:ss"
    
    let components = time.split(separator: ":")
    var hour = Int(components[0])!
    let minute = components[1]
    let second = components[2]
    
    if ampm == "AM" {
        if hour == 12 {
            hour = 0
        }
    } else { // PM
        if hour != 12 {
            hour += 12
        }
    }
    
    let hourString = String(format: "%02d", hour)
    return "\(hourString):\(minute):\(second)"
}
