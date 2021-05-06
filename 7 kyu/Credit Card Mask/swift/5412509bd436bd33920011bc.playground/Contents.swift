import Foundation

// https://www.codewars.com/kata/5412509bd436bd33920011bc/train/swift

func maskify(_ string: String) -> String {
    guard string.count > 4 else { return string }
    var str = "", i = 0
    while i < string.count - 4 {
        str += repeatElement("#", count: i).repeatedValue
        i = i + 1
    }
    return str + string.suffix(4)
}

// Don't forget to remove the number!
func maskify2(_ string: String) -> String {
    guard string.count > 4 else { return string }
    return .init(repeating: "#", count: string.count-4) + string.suffix(4)
}

// Don't forget to remove the number!
func maskify3(_ string: String) -> String {
    return string.enumerated().map {$0+4 >= string.count ? String($1) : "#"}.joined()
}

// MARK: - Tests

import XCTest

//      Executed 3 tests, with 0 failures (0 unexpected) in 0.225 (0.226) seconds
class SolutionTest: XCTestCase {
    private let num1 = "4556364607935616", exp1 = "############5616"
    private let num2 = "1", exp2 = "1"
    private let num3 = "11111", exp3 = "#1111"
    
    func test() {
        XCTAssertEqual(maskify(num1), exp1)
        XCTAssertEqual(maskify(num2), exp2)
        XCTAssertEqual(maskify(num3), exp3)
    }
    
    func test2() {
        XCTAssertEqual(maskify2(num1), exp1)
        XCTAssertEqual(maskify2(num2), exp2)
        XCTAssertEqual(maskify2(num3), exp3)
    }
    
    func test3() {
        XCTAssertEqual(maskify3(num1), exp1)
        XCTAssertEqual(maskify3(num2), exp2)
        XCTAssertEqual(maskify3(num3), exp3)
    }
}

SolutionTest.defaultTestSuite.run()
