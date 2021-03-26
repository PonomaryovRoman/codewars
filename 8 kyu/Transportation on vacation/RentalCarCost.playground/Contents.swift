import UIKit

// https://www.codewars.com/kata/568d0dd208ee69389d000016/train/swift

func RentalCarCost(_ days: Int) -> Int {
    let amount = days * 40
    return days >= 7 ? amount - 50 : days >= 3 ? amount - 20 : amount
}

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Sample tests", sampleTests),
    ]
    
    func sampleTests() {
        XCTAssertEqual(RentalCarCost(1), 40)
        XCTAssertEqual(RentalCarCost(2), 80)
        XCTAssertEqual(RentalCarCost(3), 100)
        XCTAssertEqual(RentalCarCost(4), 140)
        XCTAssertEqual(RentalCarCost(5), 180)
        XCTAssertEqual(RentalCarCost(7), 230)
        XCTAssertEqual(RentalCarCost(8), 270)
        XCTAssertEqual(RentalCarCost(9), 310)
        XCTAssertEqual(RentalCarCost(10), 350)
    }
}

SolutionTest.defaultTestSuite.run()
