import Foundation

// Josephus Survivor
// https://www.codewars.com/kata/555624b601231dc7a400017a/train/swift

func josephusSurvivor(_ n: Int, _ k: Int) -> Int {
    guard n > 0, k > 0 else { return 0 }
    var array: [Int] = [Int](1...n)
    var index: Int = 0
    while array.count > 1 {
        if index >= array.count {
            index = 0
        }
        index = index + k-1
        var diff = index - array.count
        while diff >= 0 {
            index = diff
            diff = index - array.count
        }
        array.remove(at: index)
    }
    return array.first!
}
