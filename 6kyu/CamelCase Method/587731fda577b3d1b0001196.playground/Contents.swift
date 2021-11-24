import Foundation

// CamelCase Method
// https://www.codewars.com/kata/587731fda577b3d1b0001196/train/swift

func camelCase(_ str: String) -> String {
    return str.capitalized.replacingOccurrences(of: " ", with: "")
}

// Solution 2:

/*
func camelCase(_ str: String) -> String {
    return str.capitalized.split(separator: " ").joined()
}
*/

// Solution 3:

/*
func camelCase(_ str: String) -> String {
    return str.capitalized.filter { $0 != " " }
}
*/
