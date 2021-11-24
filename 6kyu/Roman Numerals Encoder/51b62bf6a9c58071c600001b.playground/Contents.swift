import Foundation

// Roman Numerals Encoder
// https://www.codewars.com/kata/51b62bf6a9c58071c600001b/train/swift

func solution(_ number: Int) -> String {
    var n = number, result = ""
    let dict = [(1000,"M"),
                (900,"CM"),
                (500,"D"),
                (400,"CD"),
                (100,"C"),
                (90,"XC"),
                (50,"L"),
                (40,"XL"),
                (10,"X"),
                (9,"IX"),
                (5,"V"),
                (4,"IV"),
                (1,"I")]
    dict.forEach({
        while n >= $0 {
            result += $1
            n -= $0
        }
    })
    return result
}
