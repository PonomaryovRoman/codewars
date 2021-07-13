import Foundation

// Is he gonna survive?
// https://www.codewars.com/kata/59ca8246d751df55cc00014c/train/swift

func hero(bullets: Int, dragons: Int) -> Bool {
    return bullets >= (dragons * 2) // 💥
}

import XCTest

//      Executed 2 tests, with 0 failures (0 unexpected) in 0.005 (0.007) seconds

class SolutionTest: XCTestCase {
    func testHeroWillWin() {
        XCTAssertTrue(hero(bullets: 4, dragons: 2))
    }
    
    func testHeroWillLose() {
        XCTAssertFalse(hero(bullets: 4, dragons: 3))
    }
}

SolutionTest.defaultTestSuite.run()
