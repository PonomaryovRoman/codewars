import UIKit

// https://www.codewars.com/kata/5545f109004975ea66000086/train/swift

func isDivisible(_ n: Int, _ x: Int, _ y: Int) -> Bool {
    return !((n % x) != 0 || (n % y) != 0)
    // return n % x == 0 && n % y == 0
    // return n.isMultiple(of: x) && n.isMultiple(of: y)
    // return n % x + n % y == 0
}

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Basic tests", basicTests),
    ]
    
    func basicTests() {
        XCTAssertEqual(isDivisible(3, 3, 4), false)
        XCTAssertEqual(isDivisible(12, 3, 4), true)
        XCTAssertEqual(isDivisible(8, 3, 4), false)
        XCTAssertEqual(isDivisible(48, 3, 4), true)
        XCTAssertEqual(isDivisible(100, 5, 10), true)
        XCTAssertEqual(isDivisible(100, 5, 3), false)
        XCTAssertEqual(isDivisible(4, 4, 2), true)
        XCTAssertEqual(isDivisible(5, 2, 3), false)
        XCTAssertEqual(isDivisible(17, 17, 17), true)
        XCTAssertEqual(isDivisible(17, 1, 17), true)
    }
}
