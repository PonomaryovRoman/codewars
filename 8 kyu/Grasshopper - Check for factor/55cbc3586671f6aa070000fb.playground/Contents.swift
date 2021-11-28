import Foundation

// Grasshopper - Check for factor
// https://www.codewars.com/kata/55cbc3586671f6aa070000fb/train/swift

func checkForFactor(_ base: Int, _ factor: Int) -> Bool {
    return base % factor == 0 // :)
}

// MARK: - Solution 2 -

/*
func checkForFactor(_ base: Int, _ factor: Int) -> Bool {
    return base.isMultiple(of: factor)
}
*/

// MARK: - Solution 3 -

/*

let checkForFactor: (_ base: Int, _ factor: Int) -> Bool = { $0 % $1 == 0 }

*/
