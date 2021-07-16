import UIKit

// Duplicate Encoder (Swift)
// https://www.codewars.com/kata/54b42f9314d9229fd6000d9c/train/swift

func duplicateEncode(_ word: String) -> String {
    var dict = [Character:Int](), word = word.lowercased()
    word.forEach{ dict[$0, default: 0] += 1 }
    return word.map{ dict[$0]! > 1 ? ")":"(" }.joined() // OK
}

// MARK: - Solution 2 -
/*
func duplicateEncode(_ word: String) -> String {
    let low = word.lowercased()
    var dict: [Character:String] = [:]
    low.forEach { dict[$0] = dict[$0] == nil ? "(" : ")" }
    return low.reduce("") { $0 + dict[$1]! }
}
*/

// MARK: - Solution 3 -
/*
func duplicateEncode(_ word: String) -> String {
    return word.map { ch in word.filter { $0.lowercased() == ch.lowercased() }.count == 1 ? "(" : ")" }.joined()
}
*/

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.006 (0.008) seconds

class SolutionTest: XCTestCase {
    func test() {
        XCTAssertEqual(duplicateEncode("din"), "(((")
        XCTAssertEqual(duplicateEncode("recede"), "()()()")
        XCTAssertEqual(duplicateEncode("Success"), ")())())", "should ignore case")
        XCTAssertEqual(duplicateEncode("(( @"), "))((")
    }
}

SolutionTest.defaultTestSuite.run()
