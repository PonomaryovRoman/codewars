import Foundation

// Find The Parity Outlier (Swift)
// https://www.codewars.com/kata/5526fc09a1bbd946250002dc/train/swift

func findOutlier(_ array: [Int]) -> Int {
    let eve = array.filter{$0 % 2 == 0}, odd = array.filter{$0 % 2 != 0}
    return odd.count > 1 ? eve[0] : odd[0]
}

// MARK: - Solution 2 -
/*
func findOutlier(_ array: [Int]) -> Int {
    return array.first(where: array[0...2].map{ $0 & 1 }.reduce(0, +) > 1 ? { $0 & 1 == 0 } : { $0 & 1 == 1 })!
}
*/

// MARK: - Solution 3 - NOT RECOMMENDED!
// MARK: Error: Execution Timed Out (12000 ms) for random tests (array size: 7500000)
// func findOutlier(_ array: [Int]) -> Int {
//     let eves = array.filter{$0 % 2 == 0}, odds = array.filter{$0 % 2 != 0}
//     return odds.count < eves.count ? odds[0] : eves[0] // OK
// }

import XCTest

class SolutionTest: XCTestCase {
    func test() {
        XCTAssertEqual(findOutlier([1, 33, 10053359313, 2, 1, 1, 1, 1, 1, 1, -3, 9]), 2)
        XCTAssertEqual(findOutlier([8, 80, 14, 2, 20, 0, 21, 80]), 21)
    }
}

SolutionTest.defaultTestSuite.run()
