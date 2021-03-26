import Foundation

func stringy(_ size: Int) -> String {
    var result = [String](), i = 0
    while i < size { i += 1; result.append(.init(i % 2)) }
    return result.joined()
}

import XCTest
// XCTest Spec Example:
// TODO: replace with your own tests (TDD), these are just how-to examples to get you started

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Test Example", testExample),
    ]
    
    func testExample() {
        XCTAssertEqual(stringy(1), "1")
        XCTAssertEqual(stringy(2), "10")
        XCTAssertEqual(stringy(3), "101")
    }
}

SolutionTest.defaultTestSuite.run()
