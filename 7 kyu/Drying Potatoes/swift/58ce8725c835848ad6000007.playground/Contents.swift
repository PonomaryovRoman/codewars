import UIKit

// https://www.codewars.com/kata/58ce8725c835848ad6000007/train/swift

func potatoes(_ p0: Int, _ w0: Int, _ p1: Int) -> Int {
    return w0 * (100 - p0) / (100 - p1)
}

// Don't forget to remove the number!
func potatoes2(_ p0: Int, _ w0: Int, _ p1: Int) -> Int {
    return (100 - p0) * w0/(100 - p1)
}

// Don't forget to remove the number!
func potatoes3(_ p0: Int, _ w0: Int, _ p1: Int) -> Int {
    return Int(floor(Double(w0) * (100.0 - Double(p0)) / (100.0 - Double(p1))))
}

// MARK: - Tests

import XCTest

// Executed 3 tests, with 0 failures (0 unexpected) in 0.004 (0.006) seconds
class SolutionTest: XCTestCase {
    func test1() {
        XCTAssertEqual(potatoes(99, 100, 98), 50)
        XCTAssertEqual(potatoes(82, 127, 80), 114)
    }
    func test2() {
        XCTAssertEqual(potatoes2(99, 100, 98), 50)
        XCTAssertEqual(potatoes2(82, 127, 80), 114)
    }
    func test3() {
        XCTAssertEqual(potatoes3(99, 100, 98), 50)
        XCTAssertEqual(potatoes3(82, 127, 80), 114)
    }
}

SolutionTest.defaultTestSuite.run()
