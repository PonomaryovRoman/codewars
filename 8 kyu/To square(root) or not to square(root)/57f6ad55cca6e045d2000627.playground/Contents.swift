import Foundation

// To square(root) or not to square(root)
// https://www.codewars.com/kata/57f6ad55cca6e045d2000627/train/swift

func squareOrSquareRoot(_ input: [Int]) -> [Int] {
    return input.map {
        let r = sqrt(Double($0))
        return r.truncatingRemainder(dividingBy: 1).isZero ? Int(r) : $0*$0
    } // tests ok
}

// Solution 2:
/*
func squareOrSquareRoot(_ input: [Int]) -> [Int] {
    return input.map { let n = sqrt(Double($0)); return n == Double(Int(n)) ? Int(n) : $0*$0 }
}
*/

// Solution 3:
/*
func squareOrSquareRoot(_ input: [Int]) -> [Int] {
    var result = [Int]()
    input.map {
        let r = Double($0).squareRoot()
        result.append(floor(r) == r ? Int(r) : $0*$0)
    }
    return result
}
*/
