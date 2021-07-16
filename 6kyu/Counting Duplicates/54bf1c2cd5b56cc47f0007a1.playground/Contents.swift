import Foundation

// Counting Duplicates (Swift)
// https://www.codewars.com/kata/54bf1c2cd5b56cc47f0007a1/train/swift

func countDuplicates(_ s: String) -> Int {
    var dict: [String:Int] = [:]
    Array(s).forEach{ dict[$0.lowercased(), default: 0] += 1 }
    return dict.values.filter{$0 > 1}.count // OK
}

// MARK: - Solution 2 -
/*
func countDuplicates(_ s:String) -> Int {
    return s.lowercased().reduce(into: [:]) { $0[$1, default: 0] += 1 }.filter { $0.1 > 1 }.count
}
*/

// MARK: - Solution 3 -
/*
func countDuplicates(_ s:String) -> Int {
    let map = s.lowercased().map{"\($0)"}.map{($0,1)}
    return Dictionary(map, uniquingKeysWith: +).filter{$1 > 1}.count
}
*/

import XCTest

// Executed 1 test, with 0 failures (0 unexpected) in 0.107 (0.108) seconds

class SolutionTest: XCTestCase {
    func test() {
        check("abcde", 0)
        check("abcdea", 1)
        check("indivisibility", 1)
    }
    private func check(_ s: String, _ c: Int) {
        XCTAssertEqual(countDuplicates(s), c)
    }
}

SolutionTest.defaultTestSuite.run()
