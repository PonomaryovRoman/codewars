import Foundation

// Directions Reduction
// https://www.codewars.com/kata/550f22f4d758534c1100025a/train/swift

func dirReduc(_ arr: [String]) -> [String] {
    var array = arr
    let helper: ([String]) -> Int? = {
        for val in 0..<($0.count - 1) {
            switch ($0[val], $0[val+1]) {
            case ("NORTH","SOUTH"): return val
            case ("SOUTH", "NORTH"): return val
            case ("EAST", "WEST"): return val
            case ("WEST", "EAST"): return val
            default: break
            }
        }
        return nil
    }
    while let value = helper(array) {
        array.removeSubrange(value...value+1)
    }
    return array
}

// MARK: - Solution 2 -

/*
func dirReduc(_ arr: [String]) -> [String] {
    var result = [String]()
    let dict = ["NORTH":"SOUTH", "SOUTH":"NORTH", "WEST": "EAST", "EAST":"WEST"]
    arr.forEach {
        if result.last == dict[$0] {
            result.removeLast()
        } else {
            result.append($0)
        }
    }
    return result
}
*/
