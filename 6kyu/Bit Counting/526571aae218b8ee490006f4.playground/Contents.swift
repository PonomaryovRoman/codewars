import Foundation

// Bit Counting
// https://www.codewars.com/kata/526571aae218b8ee490006f4/train/swift

func countBits(_ n: Int) -> Int {
    return String(n, radix: 2).filter{$0 == "1"}.count
}

// MARK: - Solution 2 -
// func countBits(_ n: Int) -> Int { return n.nonzeroBitCount }

// MARK: - Solution 3 -
// func countBits(_ n: Int) -> Int {
//     return n > 0 ? countBits(n >> 1) + (n & 1) : 0
// }

// MARK: - Solution Test -

import XCTest

// Executed 5 tests, with 0 failures (0 unexpected) in 0.005 (0.007) seconds

class SolutionTest: XCTestCase {
    func test0() {
        XCTAssertEqual(5, countBits(1234))
    }
    func test1() {
        XCTAssertEqual(1, countBits(4))
    }
    func test2() {
        XCTAssertEqual(3, countBits(7))
    }
    func test3() {
        XCTAssertEqual(2, countBits(9))
    }
    func test4() {
        XCTAssertEqual(2, countBits(10))
    }
}

SolutionTest.defaultTestSuite.run()
