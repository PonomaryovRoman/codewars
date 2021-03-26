import UIKit

// https://www.codewars.com/kata/56dec885c54a926dcd001095/train/swift

func opposite(number: Double) -> Double {
    return -(number)
}
import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Basic test", testExample),
    ]

    func testExample() {
      XCTAssertEqual(opposite(number: 1), -1)
    }
}

SolutionTest.defaultTestSuite.run()
