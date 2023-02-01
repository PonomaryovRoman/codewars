import Foundation

// Century From Year
// https://www.codewars.com/kata/5a3fe3dde1ce0e8ed6000097/train/swift

func century(_ year: Int) -> Int {
    return (year + 99) / 100
}

/*
func century(_ year: Int) -> Int {
    return Int((Double(year) / 100).rounded(.up))
}
*/

// Executed 1 test, with 0 failures (0 unexpected) in 0.006 (0.008) seconds

import XCTest

class Tests: XCTestCase {
    func tests() {
        XCTAssertEqual(century(1705), 18)
        XCTAssertEqual(century(1900), 19)
        XCTAssertEqual(century(1601), 17)
        XCTAssertEqual(century(2000), 20)
        XCTAssertEqual(century(89), 1)
    }
}

Tests.defaultTestSuite.run()
