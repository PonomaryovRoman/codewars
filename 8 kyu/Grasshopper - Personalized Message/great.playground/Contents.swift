import UIKit

func great(_ name: String, _ owner: String) -> String {
    name == owner ? "Hello boss" : "Hello guest"
}

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Basic tests", basicTests)
    ]

    func basicTests() {
        XCTAssertEqual(great("Daniel", "Daniel"), "Hello boss")
        XCTAssertEqual(great("Greg", "Daniel"), "Hello guest")
        XCTAssertEqual(great("Bill", "Daniel"), "Hello guest")
        XCTAssertEqual(great("Mary", "Mary"), "Hello boss")
        XCTAssertEqual(great("Kate", "Bob"), "Hello guest")
    }
}

SolutionTest.defaultTestSuite.run()
