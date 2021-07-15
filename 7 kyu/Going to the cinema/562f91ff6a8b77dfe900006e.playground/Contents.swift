import Foundation

// Going to the cinema (Swift)
// https://www.codewars.com/kata/562f91ff6a8b77dfe900006e/train/swift

func movie(card: Double, ticket: Double, perc: Double) -> Int {
    var res = 0, a = 0.0, c = card, t = ticket
    while ceil(a) <= ceil(c) {
        a = a + ticket
        t = t * perc
        c += t
        res += 1
    }
    return res
}

// MARK: - Solution 2 -
/*
func movie(card: Double, ticket: Double, perc: Double) -> Int {
    var a = 0.0, b = card, i = 0
    while a <= ceil(b) {
        i += 1
        a = ticket * Double(i)
        b += ticket * pow(perc , Double(i))
    }
    return i
}
*/

// MARK: - Tests

import XCTest

// Executed 2 tests, with 0 failures (0 unexpected) in 0.105 (0.107) seconds

class SolutionTest: XCTestCase {
    func test0() {
        XCTAssertEqual(movie(card: 500.0, ticket: 15.0, perc: 0.9), 43)
    }
    func test1() {
        XCTAssertEqual(movie(card: 100.0, ticket: 10.0, perc: 0.95), 24)
    }
}


SolutionTest.defaultTestSuite.run()
