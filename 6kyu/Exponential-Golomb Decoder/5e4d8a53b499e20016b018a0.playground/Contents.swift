import Foundation

// Exponential-Golomb Decoder
// https://www.codewars.com/kata/5e4d8a53b499e20016b018a0/train/swift

func decode(_ expGolombSequence: String) -> [Int] {
    var result: [Int] = []
    var s = Substring(expGolombSequence)
    while let i = s.firstIndex(of: "1") {
        let n = 2 * s.distance(from: s.startIndex, to: i) + 1
        result.append((Int(s.prefix(n), radix: 2) ?? 0) - 1)
        s = s.dropFirst(n)
    }
    return result // OK
}
