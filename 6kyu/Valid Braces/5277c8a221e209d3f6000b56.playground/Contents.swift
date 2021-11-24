import Foundation

// Valid Braces
// https://www.codewars.com/kata/5277c8a221e209d3f6000b56/train/swift

func validBraces(_ string: String) -> Bool {
    for pattern in ["()", "[]", "{}"] where string.contains(pattern) {
        return validBraces(string.replacingOccurrences(of: pattern, with: ""))
    }
    return string == "" // OK
}
