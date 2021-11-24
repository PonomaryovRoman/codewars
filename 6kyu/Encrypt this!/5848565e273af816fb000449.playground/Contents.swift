import Foundation

// Encrypt this!
// https://www.codewars.com/kata/5848565e273af816fb000449/train/swift

func encryptThis(text: String) -> String {
    return text
        .components(separatedBy: " ")
        .map {
            var a = $0.map { "\($0)" }
            a[0] = "\(a[0].unicodeScalars.first!.value)"
            if a.count > 2 { a.swapAt(1, a.count - 1) }
            return a.joined()
        }.joined(separator: " ")
}
