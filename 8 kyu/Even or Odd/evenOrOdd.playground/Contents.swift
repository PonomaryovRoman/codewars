import Foundation

// https://www.codewars.com/kata/53da3dbb4a5168369a0000fe/train/swift

func evenOrOdd(_ number:Int) -> String {
    guard number % 2 == 0 else { return "Odd" }
    return "Even"
}

// MARK: - Soltuion 2 -
// func evenOrOdd(_ number:Int) -> String {
//     return number % 2 == 0 ? "Even" : "Odd"
// }

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Test Example", testExample),
    ]
    
    func testExample() {
        XCTAssertEqual(evenOrOdd(2), "Even")
        XCTAssertEqual(evenOrOdd(0), "Even")
        XCTAssertEqual(evenOrOdd(7), "Odd")
        XCTAssertEqual(evenOrOdd(1), "Odd")
    }
}

SolutionTest.defaultTestSuite.run()
