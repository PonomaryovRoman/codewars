import Foundation

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

// Don't forget to remove the number!
func movie2(card: Double, ticket: Double, perc: Double) -> Int {
    var a = 0.0, b = card, i = 0
    while a <= ceil(b) {
        i += 1
        a = ticket * Double(i)
        b += ticket * pow(perc , Double(i))
    }
    return i
}

// MARK: - Tests

import XCTest

//      Executed 2 tests, with 0 failures (0 unexpected) in 0.430 (0.432) seconds
class SolutionTest: XCTestCase {
    let c1 = 500.0, t1 = 15.0, p1 = 0.9, exp1 = 43
    let c2 = 100.0, t2 = 10.0, p2 = 0.95, exp2 = 24
    
    func test() {
        XCTAssertEqual(movie(card: c1, ticket: t1, perc: p1), exp1)
        XCTAssertEqual(movie(card: c2, ticket: t2, perc: p2), exp2)
    }
    
    func test2() {
        XCTAssertEqual(movie2(card: c1, ticket: t1, perc: p1), exp1)
        XCTAssertEqual(movie2(card: c2, ticket: t2, perc: p2), exp2)
    }
}


SolutionTest.defaultTestSuite.run()
