import Foundation

// https://www.codewars.com/kata/50654ddff44f800200000004/train/swift

func multiply(_ a: Double, _ b: Double) -> Double {
    return a * b
}

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("testMultiply", testMultiply),
    ]
    
    func testMultiply() {
        XCTAssertEqual(multiply(1, 3), 3, accuracy:0.0000001)
        XCTAssertEqual(multiply(0, 3), 0, accuracy:0.0000001)
        XCTAssertEqual(multiply(-1, 3), -3, accuracy:0.0000001)
    }
}

SolutionTest.defaultTestSuite.run()
