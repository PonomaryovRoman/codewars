import Foundation

// Directions Reduction
// https://www.codewars.com/kata/550f22f4d758534c1100025a/train/swift

func dirReduc(_ arr: [String]) -> [String] {
    var arr = arr
    func helper(_ arr: [String]) -> Int? {
        for value in 0..<arr.count - 1 {
            let val = (arr[value],arr[value+1])
            if val.0 == "NORTH" && val.1 == "SOUTH" { return value }
            if val.0 == "SOUTH" && val.1 == "NORTH" { return value }
            if val.0 == "EAST" && val.1 == "WEST" { return value }
            if val.0 == "WEST" && val.1 == "EAST" { return value }
        }
        return nil
    }
    while let val = helper(arr) { arr.removeSubrange(val...val+1)}
    return arr
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
