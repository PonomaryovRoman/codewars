import Foundation

// Tortoise racing
// https://www.codewars.com/kata/55e2adece53b4cdcb900006c/train/swift

func race(_ v1: Int, _ v2: Int, _ g: Int) -> [Int]? {
    guard v1 <= v2 else { return nil }
    let h = 3600, s = g * h / (v2 - v1)
    return [s / h, (s % h) / 60, s % 60] // OK
}

// Solution 2:
/*
func race(_ v1: Int, _ v2: Int, _ g: Int) -> [Int]? {
    guard v1 <= v2 else { return nil }
    let hts = 3600, htm = 60
    let t: Int = g * hts / (v2 - v1)
    let hrs = t / hts
    let m = (t - (hrs * hts)) / htm
    let s = t % htm
    return [hrs, m , s]
}
*/
