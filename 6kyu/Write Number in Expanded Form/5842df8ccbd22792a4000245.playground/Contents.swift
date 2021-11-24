import Foundation

// Write Number in Expanded Form
// https://www.codewars.com/kata/5842df8ccbd22792a4000245/train/swift

func expandedForm(_ num: Int) -> String {
    var result: [String] = []
    "\(num)".enumerated().forEach({
        if $1 != "0" {
            result.append("\($1)" + String(repeating: "0", count: "\(num)".count - $0 - 1))
        }
    })
    return result.joined(separator: " + ") // OK
}
