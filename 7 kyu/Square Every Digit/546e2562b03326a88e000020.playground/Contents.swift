import Foundation

// Square Every Digit
// https://www.codewars.com/kata/546e2562b03326a88e000020/train/swift

func squareDigits(_ num: Int) -> Int {
    var numb = "\(num)", str = ""
    numb.forEach { str += "\((Int("\($0)")! * Int("\($0)")!))" }
    return Int(str) ?? 0
}

// MARK: - Solution 2 -
//func squareDigits(_ num: Int) -> Int {
//    let a = "\(num)".compactMap { $0.wholeNumberValue ?? 0 }
//    let b = a.compactMap { "\($0 * $0)" }.joined()
//    return Int(b) ?? 0
//}

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.005 (0.007) seconds

class SolutionTest: XCTestCase {
    func test() {
        XCTAssertEqual(squareDigits(9119), 811181)
        XCTAssertEqual(squareDigits(0), 0)
    }
}

SolutionTest.defaultTestSuite.run()
