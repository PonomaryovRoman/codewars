import Foundation

// Bouncing Balls
// https://www.codewars.com/kata/5544c7a5cb454edb3c000047/train/swift

func bouncingBall(_ h: Double, _ bounce: Double, _ window: Double) -> Int {
    guard h > 0 && bounce > 0 && bounce < 1 && window < h else { return -1 }
    var count = 1, height = h * bounce
    while height > window {
        count += 2
        height *= bounce
    }
    return count
}

// Solution 2:

/*
func bouncingBall(_ h: Double, _ bounce: Double, _ window: Double) -> Int {
    if !(h > 0 && 0 < bounce && bounce < 1 && window < h) { return -1 }
    return Int(ceil(log(window / h) / log(bounce))) * 2 - 1
}
*/
