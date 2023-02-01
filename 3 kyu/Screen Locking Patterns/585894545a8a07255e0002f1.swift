import Foundation

// Screen Locking Patterns
// https://www.codewars.com/kata/585894545a8a07255e0002f1/train/swift

func countPatterns(from f: Dot, length l: Int) -> Int {
    let a = [5, 31, 154, 684, 2516, 7104, 13792, 13792]
    let b = [7, 37, 188, 816, 2926, 8118, 15564, 15564]
    let c = [8, 48, 256, 1152, 4248, 12024, 23280, 23280]
    return l > 9 || l <= 0 ? 0 : l == 1 ? 1 : [a,b,a,b,c,b,a,b,a][f.rawValue][l - 2]
}
