import Foundation

// Descending Order
// https://www.codewars.com/kata/5467e4d82edf8bbf40000155/train/swift

func descendingOrder(of number: Int) -> Int {
    let digits = "\(number)".compactMap{ $0.wholeNumberValue }
    let sorted = digits.sorted().reversed()
    let results = sorted.map{"\($0)"}.joined(separator: "")
    return Int(results) ?? 0 // OK
}

// MARK: - Solution 2 -

// func descendingOrder(of number: Int) -> Int {
//     return Int(String("\(number)".sorted(by: >))) ?? 0
// }

// MARK: - Solution Test -

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.005 (0.007) seconds

class SolutionTest: XCTestCase {
    func test() {
        XCTAssertEqual(descendingOrder(of: 0), 0)
        XCTAssertEqual(descendingOrder(of: 15), 51)
        XCTAssertEqual(descendingOrder(of: 123456789), 987654321)
    }
}

SolutionTest.defaultTestSuite.run()
