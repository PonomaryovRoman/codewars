import Foundation

// Convert boolean values to strings 'Yes' or 'No'.
// https://www.codewars.com/kata/53369039d7ab3ac506000467/train/swift

func boolToWord(_ bool: Bool) -> String {
    return bool ? "Yes" : "No"
}

// Executed 1 test, with 0 failures (0 unexpected) in 0.006 (0.009) seconds

import XCTest

class Tests: XCTestCase {
    func test() {
        XCTAssertEqual(boolToWord(true), "Yes", "Input: true")
        XCTAssertEqual(boolToWord(false), "No", "Input: false")
    }
}

Tests.defaultTestSuite.run()
