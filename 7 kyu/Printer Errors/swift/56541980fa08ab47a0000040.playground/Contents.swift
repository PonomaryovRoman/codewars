import Foundation

// https://www.codewars.com/kata/56541980fa08ab47a0000040/train/swift

func printerError(_ s: String) -> String {
    return "\(s.count - s.filter(("a"..."m").contains).count)/\(s.count)"
}

// Don't forget to remove the number!
func printerError2(_ s: String) -> String {
    return "\(s.filter{$0>"m"}.count)/\(s.count)"
}

// MARK: - Tests

import XCTest

// Executed 2 tests, with 0 failures (0 unexpected) in 0.004 (0.006) seconds

class SolutionTest: XCTestCase {
    func test() {
        XCTAssertEqual(printerError("aaabbbbhaijjjm"), "0/14")
        XCTAssertEqual(printerError("aaaxbbbbyyhwawiwjjjwwm"), "8/22")
    }
    func test2() {
        XCTAssertEqual(printerError2("aaabbbbhaijjjm"), "0/14")
        XCTAssertEqual(printerError2("aaaxbbbbyyhwawiwjjjwwm"), "8/22")
    }
}

SolutionTest.defaultTestSuite.run()
