import Foundation

// Ball Upwards
// https://www.codewars.com/kata/566be96bb3174e155300001b/train/swift

func maxBall(_ v0: Int) -> Int {
    let a = (Double(v0) / 3.6 / 0.981)
    return Int(a.rounded(.toNearestOrAwayFromZero)) // OK
}

// Solution 2:

/*
func maxBall(_ v0: Int) -> Int {
    let g = 9.81, speed = Double(v0) / 3.6
    let time = speed * sin(M_PI * 0.5) / g
    return  Int(round(time * 10))
}
*/
