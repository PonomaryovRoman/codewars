import Foundation

// Rectangle into Squares
// https://www.codewars.com/kata/55466989aeecab5aac00003e/train/swift

func sqInRect(_ x: Int, _ y: Int) -> [Int]? {
    guard x != y else { return nil }
    let sMin = min(x,y), sMax = max(x,y)
    return sMin > 0 ? .init([[sMin], sqInRect(sMax - sMin, sMin) ?? [sMin]].joined()) : []
}
