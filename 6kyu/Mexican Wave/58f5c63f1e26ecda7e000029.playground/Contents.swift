import Foundation

// Mexican Wave
// https://www.codewars.com/kata/58f5c63f1e26ecda7e000029/train/swift

func wave(_ y: String) -> [String] {
    var result: [String] = []
    for i in y.indices where !y[i].isWhitespace {
        result.append(y[..<i] + y[i].uppercased() + y[y.index(after: i)...])
    }
    return result
}
