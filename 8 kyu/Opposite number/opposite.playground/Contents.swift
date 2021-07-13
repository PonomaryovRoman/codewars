import Foundation

// Opposite number
// https://www.codewars.com/kata/56dec885c54a926dcd001095/train/swift

func opposite(number: Double) -> Double {
    return -number
}

import XCTest

class SolutionTest: XCTestCase {
    func test() {
        XCTAssertEqual(opposite(number: 1), -1)
    }
}

SolutionTest.defaultTestSuite.run()
