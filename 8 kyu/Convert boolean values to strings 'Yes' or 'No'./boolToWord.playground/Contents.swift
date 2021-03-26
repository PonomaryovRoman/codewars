import Foundation

// https://www.codewars.com/kata/53369039d7ab3ac506000467/train/swift

func boolToWord(_ bool: Bool) -> String {
    return bool ? "Yes" : "No"
}

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Fixed Tests", testFixed)
    ]

    func testFixed() {
        XCTAssertEqual(boolToWord(true), "Yes", "Input: true")
        XCTAssertEqual(boolToWord(false), "No", "Input: false")
    }
}

SolutionTest.defaultTestSuite.run()
