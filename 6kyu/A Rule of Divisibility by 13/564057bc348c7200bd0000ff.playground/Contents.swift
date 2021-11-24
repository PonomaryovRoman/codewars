import Foundation

// A Rule of Divisibility by 13
// https://www.codewars.com/kata/564057bc348c7200bd0000ff/train/swift

func thirt(_ n: Int) -> Int {
    let result = "\(n)".reversed().compactMap{ Int("\($0)") }.enumerated().map {
        $0.element * (Int(pow(Double(10), Double($0.offset))) % 13)
    }.reduce(0, +)
    guard result == n else { return thirt(result) }
    return result
}
