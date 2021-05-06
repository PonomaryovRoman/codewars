import Foundation

// https://www.codewars.com/kata/595aa94353e43a8746000120/train/swift

func findDeletedNumber(_ array: [Int], _ mixArray: [Int]) -> Int {
    return array.reduce(0,+) - mixArray.reduce(0,+)
}

// Don't forget to remove the number!
func findDeletedNumber2(_ array: [Int], _ mixArray: [Int]) -> Int {
    return array.first(where: { !mixArray.contains($0) }) ?? 0
}

// Don't forget to remove the number!
func findDeletedNumber3(_ array: [Int], _ mixArray: [Int]) -> Int {
    return mixArray.reduce(array.reduce(0, ^), ^)
}

// MARK: - Tests

import XCTest

// Executed 3 tests, with 0 failures (0 unexpected) in 0.005 (0.006) seconds
class SolutionTest: XCTestCase {
    func test() {
        XCTAssertEqual(findDeletedNumber([1,2,3,4,5,6,7,8,9],[3,2,4,6,7,8,1,9]), 5)
    }
    func test2() {
        XCTAssertEqual(findDeletedNumber2([1,2,3,4,5,6,7,8,9],[3,2,4,6,7,8,1,9]), 5)
    }
    func test3() {
        XCTAssertEqual(findDeletedNumber2([1,2,3,4,5,6,7,8,9],[3,2,4,6,7,8,1,9]), 5)
    }
}

SolutionTest.defaultTestSuite.run()
