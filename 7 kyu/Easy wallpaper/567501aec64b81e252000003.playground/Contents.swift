import Foundation

// https://www.codewars.com/kata/567501aec64b81e252000003/train/swift

func wallpaper(_ l: Double, _  w: Double,_  h: Double) -> String {
    let numbers = ["zero", "one", "two", "three", "four", "five",
                   "six", "seven", "eight", "nine", "ten",
                   "eleven", "twelve", "thirteen", "fourteen", "fifteen",
                   "sixteen", "seventeen", "eighteen", "nineteen", "twenty"]
    guard l != 0 && w != 0 && h != 0 else { return numbers[0] }
    return numbers[Int(ceil(2 * (l + w) * h / 5.2 * 1.15))]
}

// Don't forget to remove the number!
func wallpaper2(_ l: Double, _  w: Double,_  h: Double) -> String {
    let numbers = ["zero", "one", "two", "three", "four", "five",
                   "six", "seven", "eight", "nine", "ten",
                   "eleven", "twelve", "thirteen", "fourteen", "fifteen",
                   "sixteen", "seventeen", "eighteen", "nineteen", "twenty"]
    return l * w * h == 0 ? "zero" : numbers[Int((l * 2 + w * 2) / 0.52 * h / 10 * 1.15) + 1]
}

// Don't forget to remove the number!
func wallpaper3(_ l: Double, _  w: Double,_  h: Double) -> String {
    let numbers = ["zero", "one", "two", "three", "four", "five",
                   "six", "seven", "eight", "nine", "ten",
                   "eleven", "twelve", "thirteen", "fourteen", "fifteen",
                   "sixteen", "seventeen", "eighteen", "nineteen", "twenty"]
    guard l * w * h > 0 else { return numbers[0] }
    return numbers[Int((((2 * h * (l + w)) / 0.52 / 10) * 1.15).rounded(.up))]
}


// MARK: - Tests

import XCTest

//      Executed 3 tests, with 0 failures (0 unexpected) in 0.006 (0.007) seconds

class ExampleWallpaperTest: XCTestCase {
    private let l1 = 6.3, w1 = 4.5, h1 = 3.29, exp1 = "sixteen"
    private let l2 = 0.0, w2 = 2.9, h2 = 3.29, exp2 = "zero"
    private let l3 = 6.3, w3 = 5.8, h3 = 3.13, exp3 = "seventeen"
    private let l4 = 0.0, w4 = 6.7, h4 = 2.81, exp4 = "zero"
    
    func test() {
        XCTAssertEqual(wallpaper(l1,w1,h1), exp1)
        XCTAssertEqual(wallpaper(l2,w2,h2), exp2)
        XCTAssertEqual(wallpaper(l3,w3,h3), exp3)
        XCTAssertEqual(wallpaper(l4,w4,h4), exp4)
    }
    
    func test2() {
        XCTAssertEqual(wallpaper2(l1,w1,h1), exp1)
        XCTAssertEqual(wallpaper2(l2,w2,h2), exp2)
        XCTAssertEqual(wallpaper2(l3,w3,h3), exp3)
        XCTAssertEqual(wallpaper2(l4,w4,h4), exp4)
    }
    
    func test3() {
        XCTAssertEqual(wallpaper3(l1,w1,h1), exp1)
        XCTAssertEqual(wallpaper3(l2,w2,h2), exp2)
        XCTAssertEqual(wallpaper3(l3,w3,h3), exp3)
        XCTAssertEqual(wallpaper3(l4,w4,h4), exp4)
    }
}

ExampleWallpaperTest.defaultTestSuite.run()
