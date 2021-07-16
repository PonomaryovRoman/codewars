import Foundation

// Playing with digits (Swift)
// https://www.codewars.com/kata/5552101f47fc5178b1000050/train/swift

func digPow(for number: Int, using power: Int) -> Int {
    let sum = "\(number)".enumerated().reduce(0) {
        return $0 + Int(pow(Double(Int("\($1.1)")!), Double(power + $1.0)))
    }
    return sum % number == 0 ? (sum / number) : -1 // OK
}

// MARK: - Solution Test -

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.004 (0.006) seconds

class SolutionTest: XCTestCase {
    func test() {
        XCTAssertEqual(digPow(for: 89, using: 1), 1)
        XCTAssertEqual(digPow(for: 92, using: 1), -1)
        XCTAssertEqual(digPow(for: 46288, using: 3), 51)
    }
}

SolutionTest.defaultTestSuite.run()
