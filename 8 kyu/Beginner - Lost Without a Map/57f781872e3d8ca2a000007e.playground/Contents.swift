import Foundation

// Beginner - Lost Without a Map
// https://www.codewars.com/kata/57f781872e3d8ca2a000007e/train/swift

func maps(a: Array<Int>) -> Array<Int> {
    return a.map{$0 * 2} // OK
}

// MARK: - Test Cases -

// Result: Executed 2 tests, with 0 failures (0 unexpected) in 0.007 (0.009) seconds

import XCTest

class SolutionTest: XCTestCase {
    func test() {
        XCTAssertEqual(maps(a: [1,2,3,4,5]), [2,4,6,8,10])
        XCTAssertEqual(maps(a: [1,-2,3,4,5]), [2, -4, 6, 8, 10])
        XCTAssertEqual(maps(a: [-1,2,3,4,-5]), [-2, 4, 6, 8, -10])
    }
    func test1() {
        XCTAssertEqual(maps(a: []), []);
    }
}

SolutionTest.defaultTestSuite.run()
