import Foundation

// Weight for weight
// https://www.codewars.com/kata/55c6126177c9441a570000cc/train/swift

func orderWeight(_ s: String) -> String {
    let result = s.components(separatedBy: " ").sorted {
        let lhs = $0.compactMap{Int("\($0)")}.reduce(0, +)
        let rhs = $1.compactMap{Int("\($0)")}.reduce(0, +)
        return lhs == rhs ? $0 < $1 : lhs < rhs
    }.joined(separator: " ")
    return result
}

// MARK: Solution 2
/*
func orderWeight(_ s: String) -> String {
    return s.components(separatedBy: " ").sorted()
        .map { weight in (weight, weight.reduce(into: 0) { $0 += $1.wholeNumberValue! }) }
        .sorted { $0.1 < $1.1 }.map { $0.0 }.joined(separator: " ")
}
*/
