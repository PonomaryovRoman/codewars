import Foundation

// https://www.codewars.com/kata/6059f5a0867077001c6287f8/train/swift

func successorAndPredecessor(of number: Int) -> String {
    return "Predecessor: \(number-1). Sucessor: \(number+1)"
}

// Don't forget to remove the number!
func successorAndPredecessor2(of number: Int) -> String {
    return String(format: "Predecessor: %d. Sucessor: %d", number - 1, number + 1)
}


import XCTest

// Executed 2 tests, with 0 failures (0 unexpected) in 0.006 (0.008) seconds
class SolutionTest: XCTestCase {
    private let tests = [4, 1, 78, -32, 5, 0, 9]
    private let solutions = [
        "Predecessor: 3. Sucessor: 5",
        "Predecessor: 0. Sucessor: 2",
        "Predecessor: 77. Sucessor: 79",
        "Predecessor: -33. Sucessor: -31",
        "Predecessor: 4. Sucessor: 6",
        "Predecessor: -1. Sucessor: 1",
        "Predecessor: 8. Sucessor: 10",
    ]
    
    func test() {
        for (i, test) in tests.enumerated() {
            let expected = solutions[i]
            let actual = successorAndPredecessor(of: test)
            XCTAssertEqual(expected, actual)
        }
    }
    
    func test2() {
        for (i, test) in tests.enumerated() {
            let expected = solutions[i]
            let actual = successorAndPredecessor2(of: test)
            XCTAssertEqual(expected, actual)
        }
    }
}


SolutionTest.defaultTestSuite.run()
